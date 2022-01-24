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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * octets; } ;
struct TYPE_4__ {TYPE_1__ octetstring; } ;
struct snmp_value {int /*<<< orphan*/  syntax; TYPE_2__ v; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int SNMP_BRIDGEID_OCTETS ; 
 int SNMP_MAX_BRIDGE_PRIORITY ; 
 int /*<<< orphan*/  SNMP_SYNTAX_OCTETSTRING ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int32_t
FUNC6(struct snmp_value *sv, char *string)
{
	char *endptr;
	int32_t i, saved_errno;
	uint32_t v;
	uint8_t	bridge_id[SNMP_BRIDGEID_OCTETS];

	/* Read the priority. */
	saved_errno = errno;
	errno = 0;
	v = FUNC3(string, &endptr, 10);

	if (v > SNMP_MAX_BRIDGE_PRIORITY || errno != 0 || *endptr != '.') {
		errno = saved_errno;
		FUNC5("Bad bridge priority value %d", v);
		return (-1);
	}

	bridge_id[0] = (v & 0xff00);
	bridge_id[1] = (v & 0xff);

	string = endptr + 1;

	for (i = 0; i < 5; i++) {
		v = FUNC3(string, &endptr, 16);
		if (v > 0xff) {
			FUNC5("Integer value %s not supported", string);
			return (-1);
		}
		if(*endptr != ':') {
			FUNC5("Failed reading octet - %s", string);
			return (-1);
		}
		bridge_id[i + 2] = v;
		string = endptr + 1;
	}

	/* The last one - don't check the ending char here. */
	v = FUNC3(string, &endptr, 16);
	if (v > 0xff) {
		FUNC5("Integer value %s not supported", string);
		return (-1);
	}
	bridge_id[7] = v;

	if ((sv->v.octetstring.octets = FUNC0(SNMP_BRIDGEID_OCTETS)) == NULL) {
		FUNC4(LOG_ERR, "malloc failed: %s", FUNC2(errno));
		return (-1);
	}

	sv->v.octetstring.len = SNMP_BRIDGEID_OCTETS;
	FUNC1(sv->v.octetstring.octets, bridge_id, SNMP_BRIDGEID_OCTETS);
	sv->syntax = SNMP_SYNTAX_OCTETSTRING;
	return (1);
}