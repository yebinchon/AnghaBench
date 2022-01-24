#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snmp_toolinfo {scalar_t__ objects; int /*<<< orphan*/  passwd; } ;
typedef  int int32_t ;
struct TYPE_3__ {scalar_t__ engine_len; int /*<<< orphan*/  engine_id; } ;
struct TYPE_4__ {scalar_t__ version; TYPE_1__ engine; int /*<<< orphan*/  user; } ;

/* Variables and functions */
#define  BSNMPGET 130 
#define  BSNMPSET 129 
#define  BSNMPWALK 128 
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC1 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC2 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC3 (struct snmp_toolinfo*) ; 
 scalar_t__ OUTPUT_VERBOSE ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_toolinfo*) ; 
 scalar_t__ SNMP_CODE_OK ; 
 scalar_t__ SNMP_PDU_GETBULK ; 
 scalar_t__ SNMP_V1 ; 
 scalar_t__ SNMP_V3 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int program ; 
 char* program_name ; 
 TYPE_2__ snmp_client ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC11 (struct snmp_toolinfo*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  snmpset_parse_oid ; 
 int FUNC17 (struct snmp_toolinfo*) ; 
 scalar_t__ FUNC18 (struct snmp_toolinfo*) ; 
 int FUNC19 (struct snmp_toolinfo*,int,char**) ; 
 int FUNC20 (struct snmp_toolinfo*) ; 
 int FUNC21 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  snmptools_parse_oid ; 
 int /*<<< orphan*/  snmpwalk_add_default ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 char* FUNC23 (char*,char) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

int
FUNC26(int argc, char ** argv)
{
	struct snmp_toolinfo snmptoolctx;
	int32_t oid_cnt, last_oid, opt_num;
	int rc = 0;

	/* Make sure program_name is set and valid. */
	if (*argv == NULL)
		program_name = "snmptool";
	else {
		program_name = FUNC23(*argv, '/');
		if (program_name != NULL)
			program_name++;
		else
			program_name = *argv;
	}

	if (program_name == NULL) {
		FUNC6(stderr, "Error: No program name?\n");
		FUNC5 (1);
	} else if (FUNC22(program_name, "bsnmpget") == 0)
		program = BSNMPGET;
	else if (FUNC22(program_name, "bsnmpwalk") == 0)
		program = BSNMPWALK;
	else if (FUNC22(program_name, "bsnmpset") == 0)
		program = BSNMPSET;
	else {
		FUNC6(stderr, "Unknown snmp tool name '%s'.\n", program_name);
		FUNC5 (1);
	}

	/* Initialize. */
	if (FUNC18(&snmptoolctx) < 0)
		FUNC5 (1);

	if ((opt_num = FUNC19(&snmptoolctx, argc, argv)) < 0) {
		FUNC16(&snmptoolctx);
		/* On -h (help) exit without error. */
		if (opt_num == -2)
			FUNC5(0);
		else
			FUNC5(1);
	}

	oid_cnt = argc - opt_num - 1;
	if (oid_cnt == 0) {
		switch (program) {
		case BSNMPGET:
			if (!FUNC2(&snmptoolctx) &&
			    !FUNC3(&snmptoolctx)) {
				FUNC6(stderr, "No OID given.\n");
				FUNC24();
				FUNC16(&snmptoolctx);
				FUNC5(1);
			}
			break;

		case BSNMPWALK:
			if (FUNC11(&snmptoolctx, snmpwalk_add_default,
			    NULL) < 0) {
				FUNC6(stderr,
				    "Error setting default subtree.\n");
				FUNC16(&snmptoolctx);
				FUNC5(1);
			}
			break;

		case BSNMPSET:
			FUNC6(stderr, "No OID given.\n");
			FUNC24();
			FUNC16(&snmptoolctx);
			FUNC5(1);
		}
	}

	if (FUNC10(&snmptoolctx) < 0) {
		FUNC16(&snmptoolctx);
		FUNC5(1);
	}

	/* A simple sanity check - can not send GETBULK when using SNMPv1. */
	if (program == BSNMPGET && snmp_client.version == SNMP_V1 &&
	    FUNC1(&snmptoolctx) == SNMP_PDU_GETBULK) {
		FUNC6(stderr, "Cannot send GETBULK PDU with SNMPv1.\n");
		FUNC16(&snmptoolctx);
		FUNC5(1);
	}

	for (last_oid = argc - 1; oid_cnt > 0; last_oid--, oid_cnt--) {
		if ((FUNC11(&snmptoolctx, (program == BSNMPSET) ?
		    snmpset_parse_oid : snmptools_parse_oid,
		    argv[last_oid])) < 0) {
			FUNC6(stderr, "Error parsing OID string '%s'.\n",
			    argv[last_oid]);
			FUNC16(&snmptoolctx);
			FUNC5(1);
		}
	}

	if (FUNC12(NULL, NULL, NULL, NULL)) {
		FUNC25("Failed to open snmp session");
		FUNC16(&snmptoolctx);
		FUNC5(1);
	}

	if (snmp_client.version == SNMP_V3 && snmp_client.engine.engine_len == 0)
		FUNC4(&snmptoolctx);

	if (FUNC2(&snmptoolctx) &&
	    FUNC8(snmptoolctx.passwd) < 0) {
		FUNC25("Unknown SNMP Engine ID");
		rc = 1;
		goto cleanup;
	}

	if (FUNC0(&snmptoolctx) == OUTPUT_VERBOSE ||
	    FUNC2(&snmptoolctx))
		FUNC13();

	if (snmp_client.version == SNMP_V3 && FUNC3(&snmptoolctx) &&
	    !FUNC2(&snmptoolctx)) {
		if (FUNC15(&snmp_client.user,
		    snmptoolctx.passwd) != SNMP_CODE_OK ||
		    FUNC9(&snmp_client.user,
		    snmp_client.engine.engine_id,
		    snmp_client.engine.engine_len) != SNMP_CODE_OK) {
		    	FUNC25("Failed to get keys");
			rc = 1;
			goto cleanup;
		}
	}

	if (FUNC0(&snmptoolctx) == OUTPUT_VERBOSE ||
	    FUNC2(&snmptoolctx))
		FUNC14();

	if (FUNC2(&snmptoolctx) && snmptoolctx.objects == 0)
		goto cleanup;

	switch (program) {
	case BSNMPGET:
		rc = FUNC17(&snmptoolctx);
		break;
	case BSNMPWALK:
		rc = FUNC21(&snmptoolctx);
		break;
	case BSNMPSET:
		rc = FUNC20(&snmptoolctx);
		break;
	}


cleanup:
	FUNC16(&snmptoolctx);
	FUNC7();

	FUNC5(rc);
}