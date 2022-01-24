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
struct pdu {struct connection* pdu_connection; } ;
struct keys {int dummy; } ;
struct connection {scalar_t__ conn_session_type; int conn_immediate_data; int conn_max_send_data_segment_limit; size_t conn_max_send_data_segment_length; size_t conn_max_recv_data_segment_length; size_t conn_max_recv_data_segment_limit; int conn_max_burst_limit; size_t conn_max_burst_length; int conn_first_burst_limit; size_t conn_first_burst_length; void* conn_data_digest; void* conn_header_digest; int /*<<< orphan*/ * conn_initiator_alias; } ;

/* Variables and functions */
 void* CONN_DIGEST_CRC32C ; 
 scalar_t__ CONN_SESSION_TYPE_DISCOVERY ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct keys*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct pdu*,int,int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 size_t FUNC10 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC11(struct pdu *request, const char *name,
    const char *value, bool skipped_security, struct keys *response_keys)
{
	int which;
	size_t tmp;
	struct connection *conn;

	conn = request->pdu_connection;

	if (FUNC9(name, "InitiatorName") == 0) {
		if (!skipped_security)
			FUNC5(1, "initiator resent InitiatorName");
	} else if (FUNC9(name, "SessionType") == 0) {
		if (!skipped_security)
			FUNC5(1, "initiator resent SessionType");
	} else if (FUNC9(name, "TargetName") == 0) {
		if (!skipped_security)
			FUNC5(1, "initiator resent TargetName");
	} else if (FUNC9(name, "InitiatorAlias") == 0) {
		if (conn->conn_initiator_alias != NULL)
			FUNC1(conn->conn_initiator_alias);
		conn->conn_initiator_alias = FUNC0(value);
	} else if (FUNC9(value, "Irrelevant") == 0) {
		/* Ignore. */
	} else if (FUNC9(name, "HeaderDigest") == 0) {
		/*
		 * We don't handle digests for discovery sessions.
		 */
		if (conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY) {
			FUNC4("discovery session; digests disabled");
			FUNC2(response_keys, name, "None");
			return;
		}

		which = FUNC7(value, "CRC32C", "None");
		switch (which) {
		case 1:
			FUNC4("initiator prefers CRC32C "
			    "for header digest; we'll use it");
			conn->conn_header_digest = CONN_DIGEST_CRC32C;
			FUNC2(response_keys, name, "CRC32C");
			break;
		case 2:
			FUNC4("initiator prefers not to do "
			    "header digest; we'll comply");
			FUNC2(response_keys, name, "None");
			break;
		default:
			FUNC6("initiator sent unrecognized "
			    "HeaderDigest value \"%s\"; will use None", value);
			FUNC2(response_keys, name, "None");
			break;
		}
	} else if (FUNC9(name, "DataDigest") == 0) {
		if (conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY) {
			FUNC4("discovery session; digests disabled");
			FUNC2(response_keys, name, "None");
			return;
		}

		which = FUNC7(value, "CRC32C", "None");
		switch (which) {
		case 1:
			FUNC4("initiator prefers CRC32C "
			    "for data digest; we'll use it");
			conn->conn_data_digest = CONN_DIGEST_CRC32C;
			FUNC2(response_keys, name, "CRC32C");
			break;
		case 2:
			FUNC4("initiator prefers not to do "
			    "data digest; we'll comply");
			FUNC2(response_keys, name, "None");
			break;
		default:
			FUNC6("initiator sent unrecognized "
			    "DataDigest value \"%s\"; will use None", value);
			FUNC2(response_keys, name, "None");
			break;
		}
	} else if (FUNC9(name, "MaxConnections") == 0) {
		FUNC2(response_keys, name, "1");
	} else if (FUNC9(name, "InitialR2T") == 0) {
		FUNC2(response_keys, name, "Yes");
	} else if (FUNC9(name, "ImmediateData") == 0) {
		if (conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY) {
			FUNC4("discovery session; ImmediateData irrelevant");
			FUNC2(response_keys, name, "Irrelevant");
		} else {
			if (FUNC9(value, "Yes") == 0) {
				conn->conn_immediate_data = true;
				FUNC2(response_keys, name, "Yes");
			} else {
				conn->conn_immediate_data = false;
				FUNC2(response_keys, name, "No");
			}
		}
	} else if (FUNC9(name, "MaxRecvDataSegmentLength") == 0) {
		tmp = FUNC10(value, NULL, 10);
		if (tmp <= 0) {
			FUNC8(request, 0x02, 0x00);
			FUNC5(1, "received invalid "
			    "MaxRecvDataSegmentLength");
		}

		/*
		 * MaxRecvDataSegmentLength is a direction-specific parameter.
		 * We'll limit our _send_ to what the initiator can handle but
		 * our MaxRecvDataSegmentLength is not influenced by the
		 * initiator in any way.
		 */
		if ((int)tmp > conn->conn_max_send_data_segment_limit) {
			FUNC4("capping MaxRecvDataSegmentLength "
			    "from %zd to %d", tmp,
			    conn->conn_max_send_data_segment_limit);
			tmp = conn->conn_max_send_data_segment_limit;
		}
		conn->conn_max_send_data_segment_length = tmp;
		conn->conn_max_recv_data_segment_length =
		    conn->conn_max_recv_data_segment_limit;
		FUNC3(response_keys, name,
		    conn->conn_max_recv_data_segment_length);
	} else if (FUNC9(name, "MaxBurstLength") == 0) {
		tmp = FUNC10(value, NULL, 10);
		if (tmp <= 0) {
			FUNC8(request, 0x02, 0x00);
			FUNC5(1, "received invalid MaxBurstLength");
		}
		if ((int)tmp > conn->conn_max_burst_limit) {
			FUNC4("capping MaxBurstLength from %zd to %d",
			    tmp, conn->conn_max_burst_limit);
			tmp = conn->conn_max_burst_limit;
		}
		conn->conn_max_burst_length = tmp;
		FUNC3(response_keys, name, tmp);
	} else if (FUNC9(name, "FirstBurstLength") == 0) {
		tmp = FUNC10(value, NULL, 10);
		if (tmp <= 0) {
			FUNC8(request, 0x02, 0x00);
			FUNC5(1, "received invalid FirstBurstLength");
		}
		if ((int)tmp > conn->conn_first_burst_limit) {
			FUNC4("capping FirstBurstLength from %zd to %d",
			    tmp, conn->conn_first_burst_limit);
			tmp = conn->conn_first_burst_limit;
		}
		conn->conn_first_burst_length = tmp;
		FUNC3(response_keys, name, tmp);
	} else if (FUNC9(name, "DefaultTime2Wait") == 0) {
		FUNC2(response_keys, name, value);
	} else if (FUNC9(name, "DefaultTime2Retain") == 0) {
		FUNC2(response_keys, name, "0");
	} else if (FUNC9(name, "MaxOutstandingR2T") == 0) {
		FUNC2(response_keys, name, "1");
	} else if (FUNC9(name, "DataPDUInOrder") == 0) {
		FUNC2(response_keys, name, "Yes");
	} else if (FUNC9(name, "DataSequenceInOrder") == 0) {
		FUNC2(response_keys, name, "Yes");
	} else if (FUNC9(name, "ErrorRecoveryLevel") == 0) {
		FUNC2(response_keys, name, "0");
	} else if (FUNC9(name, "OFMarker") == 0) {
		FUNC2(response_keys, name, "No");
	} else if (FUNC9(name, "IFMarker") == 0) {
		FUNC2(response_keys, name, "No");
	} else if (FUNC9(name, "iSCSIProtocolLevel") == 0) {
		tmp = FUNC10(value, NULL, 10);
		if (tmp > 2)
			tmp = 2;
		FUNC3(response_keys, name, tmp);
	} else {
		FUNC4("unknown key \"%s\"; responding "
		    "with NotUnderstood", name);
		FUNC2(response_keys, name, "NotUnderstood");
	}
}