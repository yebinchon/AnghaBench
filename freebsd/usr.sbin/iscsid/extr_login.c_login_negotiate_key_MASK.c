#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iscsi_session_limits {int isl_max_send_data_segment_length; int isl_max_recv_data_segment_length; int isl_max_burst_length; int isl_first_burst_length; } ;
struct TYPE_2__ {int isc_iser; } ;
struct connection {int conn_initial_r2t; int conn_immediate_data; int conn_max_send_data_segment_length; int conn_max_recv_data_segment_length; int conn_max_burst_length; int conn_first_burst_length; TYPE_1__ conn_conf; void* conn_data_digest; void* conn_header_digest; int /*<<< orphan*/  conn_target_alias; struct iscsi_session_limits conn_limits; } ;

/* Variables and functions */
 void* CONN_DIGEST_CRC32C ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*,char*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(struct connection *conn, const char *name,
    const char *value)
{
	struct iscsi_session_limits *isl;
	int which, tmp;

	isl = &conn->conn_limits;
	if (FUNC4(name, "TargetAlias") == 0) {
		FUNC5(conn->conn_target_alias, value,
		    sizeof(conn->conn_target_alias));
	} else if (FUNC4(value, "Irrelevant") == 0) {
		/* Ignore. */
	} else if (FUNC4(name, "HeaderDigest") == 0) {
		which = FUNC3(value, "CRC32C", "None");
		switch (which) {
		case 1:
			FUNC0("target prefers CRC32C "
			    "for header digest; we'll use it");
			conn->conn_header_digest = CONN_DIGEST_CRC32C;
			break;
		case 2:
			FUNC0("target prefers not to do "
			    "header digest; we'll comply");
			break;
		default:
			FUNC2("target sent unrecognized "
			    "HeaderDigest value \"%s\"; will use None", value);
			break;
		}
	} else if (FUNC4(name, "DataDigest") == 0) {
		which = FUNC3(value, "CRC32C", "None");
		switch (which) {
		case 1:
			FUNC0("target prefers CRC32C "
			    "for data digest; we'll use it");
			conn->conn_data_digest = CONN_DIGEST_CRC32C;
			break;
		case 2:
			FUNC0("target prefers not to do "
			    "data digest; we'll comply");
			break;
		default:
			FUNC2("target sent unrecognized "
			    "DataDigest value \"%s\"; will use None", value);
			break;
		}
	} else if (FUNC4(name, "MaxConnections") == 0) {
		/* Ignore. */
	} else if (FUNC4(name, "InitialR2T") == 0) {
		if (FUNC4(value, "Yes") == 0)
			conn->conn_initial_r2t = true;
		else
			conn->conn_initial_r2t = false;
	} else if (FUNC4(name, "ImmediateData") == 0) {
		if (FUNC4(value, "Yes") == 0)
			conn->conn_immediate_data = true;
		else
			conn->conn_immediate_data = false;
	} else if (FUNC4(name, "MaxRecvDataSegmentLength") == 0) {
		tmp = FUNC6(value, NULL, 10);
		if (tmp <= 0)
			FUNC1(1, "received invalid "
			    "MaxRecvDataSegmentLength");
		if (tmp > isl->isl_max_send_data_segment_length) {
			FUNC0("capping max_send_data_segment_length "
			    "from %d to %d", tmp,
			    isl->isl_max_send_data_segment_length);
			tmp = isl->isl_max_send_data_segment_length;
		}
		conn->conn_max_send_data_segment_length = tmp;
		/* We received target's limit, that means it accepted our's. */
		conn->conn_max_recv_data_segment_length =
		    isl->isl_max_recv_data_segment_length;
	} else if (FUNC4(name, "MaxBurstLength") == 0) {
		tmp = FUNC6(value, NULL, 10);
		if (tmp <= 0)
			FUNC1(1, "received invalid MaxBurstLength");
		if (tmp > isl->isl_max_burst_length) {
			FUNC0("capping MaxBurstLength "
			    "from %d to %d", tmp, isl->isl_max_burst_length);
			tmp = isl->isl_max_burst_length;
		}
		conn->conn_max_burst_length = tmp;
	} else if (FUNC4(name, "FirstBurstLength") == 0) {
		tmp = FUNC6(value, NULL, 10);
		if (tmp <= 0)
			FUNC1(1, "received invalid FirstBurstLength");
		if (tmp > isl->isl_first_burst_length) {
			FUNC0("capping FirstBurstLength "
			    "from %d to %d", tmp, isl->isl_first_burst_length);
			tmp = isl->isl_first_burst_length;
		}
		conn->conn_first_burst_length = tmp;
	} else if (FUNC4(name, "DefaultTime2Wait") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "DefaultTime2Retain") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "MaxOutstandingR2T") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "DataPDUInOrder") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "DataSequenceInOrder") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "ErrorRecoveryLevel") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "OFMarker") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "IFMarker") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "RDMAExtensions") == 0) {
		if (conn->conn_conf.isc_iser == 1 &&
		    FUNC4(value, "Yes") != 0) {
			FUNC1(1, "received unsupported RDMAExtensions");
		}
	} else if (FUNC4(name, "InitiatorRecvDataSegmentLength") == 0) {
		tmp = FUNC6(value, NULL, 10);
		if (tmp <= 0)
			FUNC1(1, "received invalid "
			    "InitiatorRecvDataSegmentLength");
		if ((int)tmp > isl->isl_max_recv_data_segment_length) {
			FUNC0("capping InitiatorRecvDataSegmentLength "
			    "from %d to %d", tmp,
			    isl->isl_max_recv_data_segment_length);
			tmp = isl->isl_max_recv_data_segment_length;
		}
		conn->conn_max_recv_data_segment_length = tmp;
	} else if (FUNC4(name, "TargetPortalGroupTag") == 0) {
		/* Ignore */
	} else if (FUNC4(name, "TargetRecvDataSegmentLength") == 0) {
		tmp = FUNC6(value, NULL, 10);
		if (tmp <= 0) {
			FUNC1(1,
			    "received invalid TargetRecvDataSegmentLength");
		}
		if (tmp > isl->isl_max_send_data_segment_length) {
			FUNC0("capping TargetRecvDataSegmentLength "
			    "from %d to %d", tmp,
			    isl->isl_max_send_data_segment_length);
			tmp = isl->isl_max_send_data_segment_length;
		}
		conn->conn_max_send_data_segment_length = tmp;
	} else {
		FUNC0("unknown key \"%s\"; ignoring",  name);
	}
}