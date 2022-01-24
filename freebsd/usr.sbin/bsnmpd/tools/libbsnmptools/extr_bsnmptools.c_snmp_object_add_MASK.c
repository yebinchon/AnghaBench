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
struct snmp_toolinfo {scalar_t__ objects; int /*<<< orphan*/  snmp_objectlist; } ;
struct snmp_object {int dummy; } ;
typedef  scalar_t__ (* snmp_verify_inoid_f ) (struct snmp_toolinfo*,struct snmp_object*,char*) ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct snmp_object*,int /*<<< orphan*/ ) ; 
 scalar_t__ SNMP_MAX_BINDINGS ; 
 struct snmp_object* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_object*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int32_t
FUNC6(struct snmp_toolinfo *snmptoolctx, snmp_verify_inoid_f func,
    char *string)
{
	struct snmp_object *obj;

	if (snmptoolctx == NULL)
		return (-1);

	/* XXX-BZ does that chack make sense? */
	if (snmptoolctx->objects >= SNMP_MAX_BINDINGS) {
		FUNC5("Too many bindings in PDU - %u", snmptoolctx->objects + 1);
		return (-1);
	}

	if ((obj = FUNC1(1, sizeof(struct snmp_object))) == NULL) {
		FUNC4(LOG_ERR, "malloc() failed: %s", FUNC3(errno));
		return (-1);
	}

	if (func(snmptoolctx, obj, string) < 0) {
		FUNC5("Invalid OID - %s", string);
		FUNC2(obj);
		return (-1);
	}

	snmptoolctx->objects++;
	FUNC0(&snmptoolctx->snmp_objectlist, obj, link);

	return (1);
}