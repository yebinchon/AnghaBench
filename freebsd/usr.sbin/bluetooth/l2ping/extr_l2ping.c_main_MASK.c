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
typedef  char uint8_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_l2cap {int l2cap_len; char l2cap_bdaddr; void* l2cap_family; } ;
struct sockaddr {int dummy; } ;
struct ng_btsocket_l2cap_raw_ping {int result; int echo_size; char* echo_data; } ;
struct hostent {char* h_addr; char* h_name; } ;
typedef  int /*<<< orphan*/  src ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  r ;
typedef  int /*<<< orphan*/  ng_l2cap_cmd_hdr_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  dst ;
typedef  char bdaddr_t ;

/* Variables and functions */
 void* AF_BLUETOOTH ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_L2CAP ; 
 char* NG_HCI_BDADDR_ANY ; 
 int NG_L2CAP_MAX_ECHO_SIZE ; 
 int NG_L2CAP_MTU_MINIMUM ; 
 int /*<<< orphan*/  PATTERN_SIZE ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SIOC_L2CAP_L2CA_PING ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct hostent* FUNC3 (char const*,int,void*) ; 
 struct hostent* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int,char**,char*) ; 
 scalar_t__ FUNC15 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (int,int /*<<< orphan*/ ,struct ng_btsocket_l2cap_raw_ping*,int) ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sockaddr_l2cap*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int,int /*<<< orphan*/ ) ; 
 int FUNC23 (int) ; 
 int /*<<< orphan*/  optarg ; 
 char* pattern ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC26 (char*) ; 
 char* FUNC27 (int) ; 
 int FUNC28 (int /*<<< orphan*/ ,char**,int) ; 
 double FUNC29 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC30 (struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC31 () ; 

int
FUNC32(int argc, char *argv[])
{
	bdaddr_t		 src, dst;
	struct hostent		*he;
	uint8_t			*echo_data;
	struct sockaddr_l2cap	 sa;
	int32_t			 n, s, count, wait, flood, echo_size, numeric;
	char			*endp, *rname;

	/* Set defaults */
	FUNC20(&src, NG_HCI_BDADDR_ANY, sizeof(src));
	FUNC20(&dst, NG_HCI_BDADDR_ANY, sizeof(dst));

	echo_data = (uint8_t *) FUNC6(NG_L2CAP_MAX_ECHO_SIZE, sizeof(uint8_t));
	if (echo_data == NULL) {
		FUNC12(stderr, "Failed to allocate echo data buffer");
		FUNC11(1);
	}

	/*
	 * Set default echo size to the NG_L2CAP_MTU_MINIMUM minus
	 * the size of the L2CAP signalling command header.
	 */

	echo_size = NG_L2CAP_MTU_MINIMUM - sizeof(ng_l2cap_cmd_hdr_t);
	count = -1; /* unimited */
	wait = 1;   /* sec */
	flood = 0;
	numeric = 0;

	/* Parse command line arguments */
	while ((n = FUNC14(argc, argv, "a:c:fi:nS:s:h")) != -1) {
		switch (n) {
		case 'a':
			if (!FUNC2(optarg, &dst)) {
				if ((he = FUNC4(optarg)) == NULL)
					FUNC10(1, "%s: %s", optarg, FUNC16(h_errno));

				FUNC20(&dst, he->h_addr, sizeof(dst));
			}
			break;

		case 'c':
			count = FUNC28(optarg, &endp, 10);
			if (count <= 0 || *endp != '\0')
				FUNC31();
			break;

		case 'f':
			flood = 1;
			break;

		case 'i':
			wait = FUNC28(optarg, &endp, 10);
			if (wait <= 0 || *endp != '\0')
				FUNC31();
			break;

		case 'n':
			numeric = 1;
			break;

		case 'S':
			if (!FUNC2(optarg, &src)) {
				if ((he = FUNC4(optarg)) == NULL)
					FUNC10(1, "%s: %s", optarg, FUNC16(h_errno));

				FUNC20(&src, he->h_addr, sizeof(src));
			}
			break;

		case 's':
                        echo_size = FUNC28(optarg, &endp, 10);
                        if (echo_size < sizeof(int32_t) ||
			    echo_size > NG_L2CAP_MAX_ECHO_SIZE ||
			    *endp != '\0')
				FUNC31();
			break;

		case 'h':
		default:
			FUNC31();
			break;
		}
	}

	if (FUNC19(&dst, NG_HCI_BDADDR_ANY, sizeof(dst)) == 0)
		FUNC31();

	he = FUNC3((const char *)&dst, sizeof(dst), AF_BLUETOOTH);
	if (he == NULL || he->h_name == NULL || he->h_name[0] == '\0' || numeric)
		FUNC0(&rname, "%d", FUNC5(&dst, NULL));
	else
		rname = FUNC26(he->h_name);

	if (rname == NULL)
		FUNC10(1, "Failed to create remote hostname");

	s = FUNC25(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_L2CAP);
	if (s < 0)
		FUNC9(2, "Could not create socket");

	FUNC21(&sa, 0, sizeof(sa));
	sa.l2cap_len = sizeof(sa);
	sa.l2cap_family = AF_BLUETOOTH;
	FUNC20(&sa.l2cap_bdaddr, &src, sizeof(sa.l2cap_bdaddr));

	if (FUNC1(s, (struct sockaddr *) &sa, sizeof(sa)) < 0)
		FUNC9(3,
"Could not bind socket, src bdaddr=%s", FUNC5(&sa.l2cap_bdaddr, NULL));

	FUNC21(&sa, 0, sizeof(sa));
	sa.l2cap_len = sizeof(sa);
	sa.l2cap_family = AF_BLUETOOTH;
	FUNC20(&sa.l2cap_bdaddr, &dst, sizeof(sa.l2cap_bdaddr));

	if (FUNC8(s, (struct sockaddr *) &sa, sizeof(sa)) < 0)
		FUNC9(4,
"Could not connect socket, dst bdaddr=%s", FUNC5(&sa.l2cap_bdaddr, NULL));

	/* Fill pattern */
	for (n = 0; n < echo_size; ) {
		int32_t	avail = FUNC22(echo_size - n, PATTERN_SIZE);

		FUNC20(echo_data + n, pattern, avail);
		n += avail;
	}

	/* Start ping'ing */
	for (n = 0; count == -1 || count > 0; n ++) {
		struct ng_btsocket_l2cap_raw_ping	r;
		struct timeval				a, b;
		int32_t					fail;

		if (FUNC15(&a, NULL) < 0)
			FUNC9(5, "Could not gettimeofday(a)");

		fail = 0;
		*((int32_t *) echo_data) = FUNC17(n);

		r.result = 0;
		r.echo_size = echo_size;
		r.echo_data = echo_data;
		if (FUNC18(s, SIOC_L2CAP_L2CA_PING, &r, sizeof(r)) < 0) {
			r.result = errno;
			fail = 1;
/*
			warn("Could not ping, dst bdaddr=%s",
				bt_ntoa(&r.echo_dst, NULL));
*/
		}

		if (FUNC15(&b, NULL) < 0)
			FUNC9(7, "Could not gettimeofday(b)");

		FUNC30(&b, &a);

		FUNC12(stdout,
"%d bytes from %s seq_no=%d time=%.3f ms result=%#x %s\n",
			r.echo_size,
			rname,
			FUNC23(*((int32_t *)(r.echo_data))),
			FUNC29(&b), r.result,
			((fail == 0)? "" : FUNC27(errno)));

		if (!flood) {
			/* Wait */
			a.tv_sec = wait;
			a.tv_usec = 0;
			FUNC24(0, NULL, NULL, NULL, &a);
		}

		if (count != -1)
			count --;
	}

	FUNC13(rname);
	FUNC13(echo_data);
	FUNC7(s);

	return (0);
}