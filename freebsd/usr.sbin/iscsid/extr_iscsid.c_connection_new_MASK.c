#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iscsi_session_limits {int isl_max_recv_data_segment_length; int isl_max_send_data_segment_length; int isl_max_burst_length; int isl_first_burst_length; char* isc_initiator_addr; char* isc_target_addr; scalar_t__ isc_iser; } ;
struct iscsi_daemon_request {int /*<<< orphan*/  idr_limits; int /*<<< orphan*/  idr_tsih; int /*<<< orphan*/  idr_isid; int /*<<< orphan*/  idr_conf; int /*<<< orphan*/  idr_session_id; } ;
struct iscsi_daemon_connect {int idc_iser; int /*<<< orphan*/  idc_to_addrlen; int /*<<< orphan*/  idc_to_addr; int /*<<< orphan*/  idc_from_addrlen; int /*<<< orphan*/  idc_from_addr; int /*<<< orphan*/  idc_protocol; int /*<<< orphan*/  idc_socktype; int /*<<< orphan*/  idc_domain; int /*<<< orphan*/  idc_session_id; } ;
struct connection {int conn_initial_r2t; int conn_immediate_data; int conn_max_recv_data_segment_length; int conn_max_send_data_segment_length; int conn_max_burst_length; int conn_first_burst_length; int conn_iscsi_fd; scalar_t__ conn_socket; struct iscsi_session_limits conn_conf; int /*<<< orphan*/  conn_session_id; struct iscsi_session_limits conn_limits; int /*<<< orphan*/  conn_tsih; struct iscsi_session_limits conn_isid; void* conn_data_digest; void* conn_header_digest; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  sockbuf ;
typedef  int /*<<< orphan*/  idc ;

/* Variables and functions */
 void* CONN_DIGEST_NONE ; 
 int /*<<< orphan*/  ISCSIDCONNECT ; 
 int SOCKBUF_SIZE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct connection* FUNC1 (int,int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct iscsi_daemon_connect*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_session_limits*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_daemon_connect*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct connection*,char const*,struct addrinfo**,int) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct connection *
FUNC15(int iscsi_fd, const struct iscsi_daemon_request *request)
{
	struct connection *conn;
	struct iscsi_session_limits *isl;
	struct addrinfo *from_ai, *to_ai;
	const char *from_addr, *to_addr;
#ifdef ICL_KERNEL_PROXY
	struct iscsi_daemon_connect idc;
#endif
	int error, sockbuf;

	conn = FUNC1(1, sizeof(*conn));
	if (conn == NULL)
		FUNC6(1, "calloc");

	/*
	 * Default values, from RFC 3720, section 12.
	 */
	conn->conn_header_digest = CONN_DIGEST_NONE;
	conn->conn_data_digest = CONN_DIGEST_NONE;
	conn->conn_initial_r2t = true;
	conn->conn_immediate_data = true;
	conn->conn_max_recv_data_segment_length = 8192;
	conn->conn_max_send_data_segment_length = 8192;
	conn->conn_max_burst_length = 262144;
	conn->conn_first_burst_length = 65536;
	conn->conn_iscsi_fd = iscsi_fd;

	conn->conn_session_id = request->idr_session_id;
	FUNC9(&conn->conn_conf, &request->idr_conf, sizeof(conn->conn_conf));
	FUNC9(&conn->conn_isid, &request->idr_isid, sizeof(conn->conn_isid));
	conn->conn_tsih = request->idr_tsih;

	/*
	 * Read the driver limits and provide reasonable defaults for the ones
	 * the driver doesn't care about.  If a max_snd_dsl is not explicitly
	 * provided by the driver then we'll make sure both conn->max_snd_dsl
	 * and isl->max_snd_dsl are set to the rcv_dsl.  This preserves historic
	 * behavior.
	 */
	isl = &conn->conn_limits;
	FUNC9(isl, &request->idr_limits, sizeof(*isl));
	if (isl->isl_max_recv_data_segment_length == 0)
		isl->isl_max_recv_data_segment_length = (1 << 24) - 1;
	if (isl->isl_max_send_data_segment_length == 0)
		isl->isl_max_send_data_segment_length =
		    isl->isl_max_recv_data_segment_length;
	if (isl->isl_max_burst_length == 0)
		isl->isl_max_burst_length = (1 << 24) - 1;
	if (isl->isl_first_burst_length == 0)
		isl->isl_first_burst_length = (1 << 24) - 1;
	if (isl->isl_first_burst_length > isl->isl_max_burst_length)
		isl->isl_first_burst_length = isl->isl_max_burst_length;

	/*
	 * Limit default send length in case it won't be negotiated.
	 * We can't do it for other limits, since they may affect both
	 * sender and receiver operation, and we must obey defaults.
	 */
	if (conn->conn_max_send_data_segment_length >
	    isl->isl_max_send_data_segment_length) {
		conn->conn_max_send_data_segment_length =
		    isl->isl_max_send_data_segment_length;
	}

	from_addr = conn->conn_conf.isc_initiator_addr;
	to_addr = conn->conn_conf.isc_target_addr;

	if (from_addr[0] != '\0')
		FUNC11(conn, from_addr, &from_ai, true);
	else
		from_ai = NULL;

	FUNC11(conn, to_addr, &to_ai, false);

#ifdef ICL_KERNEL_PROXY
	if (conn->conn_conf.isc_iser) {
		memset(&idc, 0, sizeof(idc));
		idc.idc_session_id = conn->conn_session_id;
		if (conn->conn_conf.isc_iser)
			idc.idc_iser = 1;
		idc.idc_domain = to_ai->ai_family;
		idc.idc_socktype = to_ai->ai_socktype;
		idc.idc_protocol = to_ai->ai_protocol;
		if (from_ai != NULL) {
			idc.idc_from_addr = from_ai->ai_addr;
			idc.idc_from_addrlen = from_ai->ai_addrlen;
		}
		idc.idc_to_addr = to_ai->ai_addr;
		idc.idc_to_addrlen = to_ai->ai_addrlen;

		log_debugx("connecting to %s using ICL kernel proxy", to_addr);
		error = ioctl(iscsi_fd, ISCSIDCONNECT, &idc);
		if (error != 0) {
			fail(conn, strerror(errno));
			log_err(1, "failed to connect to %s "
			    "using ICL kernel proxy: ISCSIDCONNECT", to_addr);
		}

		return (conn);
	}
#endif /* ICL_KERNEL_PROXY */

	if (conn->conn_conf.isc_iser) {
		FUNC3(conn, "iSER not supported");
		FUNC7(1, "iscsid(8) compiled without ICL_KERNEL_PROXY "
		    "does not support iSER");
	}

	conn->conn_socket = FUNC13(to_ai->ai_family, to_ai->ai_socktype,
	    to_ai->ai_protocol);
	if (conn->conn_socket < 0) {
		FUNC3(conn, FUNC14(errno));
		FUNC6(1, "failed to create socket for %s", from_addr);
	}
	sockbuf = SOCKBUF_SIZE;
	if (FUNC12(conn->conn_socket, SOL_SOCKET, SO_RCVBUF,
	    &sockbuf, sizeof(sockbuf)) == -1)
		FUNC8("setsockopt(SO_RCVBUF) failed");
	sockbuf = SOCKBUF_SIZE;
	if (FUNC12(conn->conn_socket, SOL_SOCKET, SO_SNDBUF,
	    &sockbuf, sizeof(sockbuf)) == -1)
		FUNC8("setsockopt(SO_SNDBUF) failed");
	if (from_ai != NULL) {
		error = FUNC0(conn->conn_socket, from_ai->ai_addr,
		    from_ai->ai_addrlen);
		if (error != 0) {
			FUNC3(conn, FUNC14(errno));
			FUNC6(1, "failed to bind to %s", from_addr);
		}
	}
	FUNC5("connecting to %s", to_addr);
	error = FUNC2(conn->conn_socket, to_ai->ai_addr, to_ai->ai_addrlen);
	if (error != 0) {
		FUNC3(conn, FUNC14(errno));
		FUNC6(1, "failed to connect to %s", to_addr);
	}

	return (conn);
}