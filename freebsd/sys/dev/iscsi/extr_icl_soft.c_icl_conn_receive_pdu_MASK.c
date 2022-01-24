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
struct socket {int dummy; } ;
struct iscsi_bhs {int dummy; } ;
struct icl_pdu {int /*<<< orphan*/  ip_data_len; } ;
struct icl_conn {int ic_receive_state; size_t ic_receive_len; size_t ic_max_data_segment_length; int ic_header_crc32c; int ic_data_crc32c; struct icl_pdu* ic_receive_pdu; struct socket* ic_socket; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ICL_CONN_STATE_AHS 132 
#define  ICL_CONN_STATE_BHS 131 
#define  ICL_CONN_STATE_DATA 130 
#define  ICL_CONN_STATE_DATA_DIGEST 129 
#define  ICL_CONN_STATE_HEADER_DIGEST 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 
 size_t ISCSI_DATA_DIGEST_SIZE ; 
 size_t ISCSI_HEADER_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (struct icl_conn*) ; 
 size_t FUNC4 (struct icl_pdu*) ; 
 int FUNC5 (struct icl_pdu*,size_t*) ; 
 int FUNC6 (struct icl_pdu*,size_t*) ; 
 size_t FUNC7 (struct icl_pdu*) ; 
 size_t FUNC8 (struct icl_pdu*) ; 
 int FUNC9 (struct icl_pdu*,size_t*) ; 
 int FUNC10 (struct icl_pdu*,size_t*) ; 
 int FUNC11 (struct icl_pdu*,size_t*,int*) ; 
 struct icl_pdu* FUNC12 (struct icl_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static struct icl_pdu *
FUNC14(struct icl_conn *ic, size_t *availablep)
{
	struct icl_pdu *request;
	struct socket *so;
	size_t len;
	int error;
	bool more_needed;

	so = ic->ic_socket;

	if (ic->ic_receive_state == ICL_CONN_STATE_BHS) {
		FUNC2(ic->ic_receive_pdu == NULL,
		    ("ic->ic_receive_pdu != NULL"));
		request = FUNC12(ic, M_NOWAIT);
		if (request == NULL) {
			FUNC0("failed to allocate PDU; "
			    "dropping connection");
			FUNC3(ic);
			return (NULL);
		}
		ic->ic_receive_pdu = request;
	} else {
		FUNC2(ic->ic_receive_pdu != NULL,
		    ("ic->ic_receive_pdu == NULL"));
		request = ic->ic_receive_pdu;
	}

	if (*availablep < ic->ic_receive_len) {
#if 0
		ICL_DEBUG("not enough data; need %zd, "
		    "have %zd", ic->ic_receive_len, *availablep);
#endif
		return (NULL);
	}

	switch (ic->ic_receive_state) {
	case ICL_CONN_STATE_BHS:
		//ICL_DEBUG("receiving BHS");
		error = FUNC10(request, availablep);
		if (error != 0) {
			FUNC0("failed to receive BHS; "
			    "dropping connection");
			break;
		}

		/*
		 * We don't enforce any limit for AHS length;
		 * its length is stored in 8 bit field.
		 */

		len = FUNC7(request);
		if (len > ic->ic_max_data_segment_length) {
			FUNC1("received data segment "
			    "length %zd is larger than negotiated "
			    "MaxDataSegmentLength %zd; "
			    "dropping connection",
			    len, ic->ic_max_data_segment_length);
			error = EINVAL;
			break;
		}

		ic->ic_receive_state = ICL_CONN_STATE_AHS;
		ic->ic_receive_len = FUNC4(request);
		break;

	case ICL_CONN_STATE_AHS:
		//ICL_DEBUG("receiving AHS");
		error = FUNC9(request, availablep);
		if (error != 0) {
			FUNC0("failed to receive AHS; "
			    "dropping connection");
			break;
		}
		ic->ic_receive_state = ICL_CONN_STATE_HEADER_DIGEST;
		if (ic->ic_header_crc32c == false)
			ic->ic_receive_len = 0;
		else
			ic->ic_receive_len = ISCSI_HEADER_DIGEST_SIZE;
		break;

	case ICL_CONN_STATE_HEADER_DIGEST:
		//ICL_DEBUG("receiving header digest");
		error = FUNC6(request, availablep);
		if (error != 0) {
			FUNC0("header digest failed; "
			    "dropping connection");
			break;
		}

		ic->ic_receive_state = ICL_CONN_STATE_DATA;
		ic->ic_receive_len =
		    FUNC8(request);
		break;

	case ICL_CONN_STATE_DATA:
		//ICL_DEBUG("receiving data segment");
		error = FUNC11(request, availablep,
		    &more_needed);
		if (error != 0) {
			FUNC0("failed to receive data segment;"
			    "dropping connection");
			break;
		}

		if (more_needed)
			break;

		ic->ic_receive_state = ICL_CONN_STATE_DATA_DIGEST;
		if (request->ip_data_len == 0 || ic->ic_data_crc32c == false)
			ic->ic_receive_len = 0;
		else
			ic->ic_receive_len = ISCSI_DATA_DIGEST_SIZE;
		break;

	case ICL_CONN_STATE_DATA_DIGEST:
		//ICL_DEBUG("receiving data digest");
		error = FUNC5(request, availablep);
		if (error != 0) {
			FUNC0("data digest failed; "
			    "dropping connection");
			break;
		}

		/*
		 * We've received complete PDU; reset the receive state machine
		 * and return the PDU.
		 */
		ic->ic_receive_state = ICL_CONN_STATE_BHS;
		ic->ic_receive_len = sizeof(struct iscsi_bhs);
		ic->ic_receive_pdu = NULL;
		return (request);

	default:
		FUNC13("invalid ic_receive_state %d\n", ic->ic_receive_state);
	}

	if (error != 0) {
		/*
		 * Don't free the PDU; it's pointed to by ic->ic_receive_pdu
		 * and will get freed in icl_soft_conn_close().
		 */
		FUNC3(ic);
	}

	return (NULL);
}