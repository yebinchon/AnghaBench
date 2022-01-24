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
struct pdu {scalar_t__ pdu_bhs; } ;
struct keys {int /*<<< orphan*/ * keys_values; int /*<<< orphan*/ ** keys_names; } ;
struct iscsi_session_limits {int /*<<< orphan*/  isl_max_recv_data_segment_length; int /*<<< orphan*/  isl_max_send_data_segment_length; int /*<<< orphan*/  isl_first_burst_length; int /*<<< orphan*/  isl_max_burst_length; } ;
struct iscsi_bhs_login_response {int bhslr_flags; } ;
struct TYPE_2__ {scalar_t__ isc_discovery; scalar_t__ isc_header_digest; scalar_t__ isc_data_digest; int isc_iser; int /*<<< orphan*/  isc_offload; } ;
struct connection {TYPE_1__ conn_conf; struct iscsi_session_limits conn_limits; } ;

/* Variables and functions */
 int BHSLR_FLAGS_TRANSIT ; 
 scalar_t__ BHSLR_STAGE_FULL_FEATURE_PHASE ; 
 int /*<<< orphan*/  BHSLR_STAGE_OPERATIONAL_NEGOTIATION ; 
 int KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct keys*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct keys*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*) ; 
 int /*<<< orphan*/  FUNC3 (struct keys*,struct pdu*) ; 
 struct keys* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct keys*,struct pdu*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pdu* FUNC9 (struct connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct pdu*) ; 
 struct pdu* FUNC11 (struct connection*) ; 
 int /*<<< orphan*/  FUNC12 (struct pdu*) ; 
 int /*<<< orphan*/  FUNC13 (struct pdu*) ; 

__attribute__((used)) static void
FUNC14(struct connection *conn)
{
	struct pdu *request, *response;
	struct keys *request_keys, *response_keys;
	struct iscsi_bhs_login_response *bhslr;
	int i, nrequests = 0;
	struct iscsi_session_limits *isl;

	FUNC6("beginning operational parameter negotiation");
	request = FUNC9(conn, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
	request_keys = FUNC4();

	isl = &conn->conn_limits;
	FUNC6("Limits for offload \"%s\" are "
	    "MaxRecvDataSegment=%d, max_send_dsl=%d, "
	    "MaxBurstLength=%d, FirstBurstLength=%d",
	    conn->conn_conf.isc_offload, isl->isl_max_recv_data_segment_length,
	    isl->isl_max_send_data_segment_length, isl->isl_max_burst_length,
	    isl->isl_first_burst_length);

	/*
	 * The following keys are irrelevant for discovery sessions.
	 */
	if (conn->conn_conf.isc_discovery == 0) {
		if (conn->conn_conf.isc_header_digest != 0)
			FUNC0(request_keys, "HeaderDigest", "CRC32C");
		else
			FUNC0(request_keys, "HeaderDigest", "None");
		if (conn->conn_conf.isc_data_digest != 0)
			FUNC0(request_keys, "DataDigest", "CRC32C");
		else
			FUNC0(request_keys, "DataDigest", "None");

		FUNC0(request_keys, "ImmediateData", "Yes");
		FUNC1(request_keys, "MaxBurstLength",
		    isl->isl_max_burst_length);
		FUNC1(request_keys, "FirstBurstLength",
		    isl->isl_first_burst_length);
		FUNC0(request_keys, "InitialR2T", "Yes");
		FUNC0(request_keys, "MaxOutstandingR2T", "1");
		if (conn->conn_conf.isc_iser == 1) {
			FUNC1(request_keys, "InitiatorRecvDataSegmentLength",
			    isl->isl_max_recv_data_segment_length);
			FUNC1(request_keys, "TargetRecvDataSegmentLength",
			    isl->isl_max_send_data_segment_length);
			FUNC0(request_keys, "RDMAExtensions", "Yes");
		} else {
			FUNC1(request_keys, "MaxRecvDataSegmentLength",
			    isl->isl_max_recv_data_segment_length);
		}
	} else {
		FUNC0(request_keys, "HeaderDigest", "None");
		FUNC0(request_keys, "DataDigest", "None");
		FUNC1(request_keys, "MaxRecvDataSegmentLength",
		    isl->isl_max_recv_data_segment_length);
	}

	FUNC0(request_keys, "DefaultTime2Wait", "0");
	FUNC0(request_keys, "DefaultTime2Retain", "0");
	FUNC0(request_keys, "ErrorRecoveryLevel", "0");
	FUNC5(request_keys, request);
	FUNC2(request_keys);
	request_keys = NULL;
	FUNC13(request);
	FUNC12(request);
	request = NULL;

	response = FUNC11(conn);
	response_keys = FUNC4();
	FUNC3(response_keys, response);
	for (i = 0; i < KEYS_MAX; i++) {
		if (response_keys->keys_names[i] == NULL)
			break;

		FUNC8(conn,
		    response_keys->keys_names[i], response_keys->keys_values[i]);
	}

	FUNC2(response_keys);
	response_keys = NULL;

	for (;;) {
		bhslr = (struct iscsi_bhs_login_response *)response->pdu_bhs;
		if ((bhslr->bhslr_flags & BHSLR_FLAGS_TRANSIT) != 0)
			break;

		nrequests++;
		if (nrequests > 5) {
			FUNC7("received login response "
			    "without the \"T\" flag too many times; giving up");
			break;
		}

		FUNC6("received login response "
		    "without the \"T\" flag; sending another request");

		FUNC12(response);

		request = FUNC9(conn,
		    BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
		FUNC13(request);
		FUNC12(request);

		response = FUNC11(conn);
	}

	if (FUNC10(response) != BHSLR_STAGE_FULL_FEATURE_PHASE)
		FUNC7("received final login response with wrong NSG 0x%x",
		    FUNC10(response));
	FUNC12(response);

	FUNC6("operational parameter negotiation done; "
	    "transitioning to Full Feature phase");
}