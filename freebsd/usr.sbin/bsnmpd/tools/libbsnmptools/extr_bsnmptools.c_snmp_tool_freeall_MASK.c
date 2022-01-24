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
struct snmp_toolinfo {int /*<<< orphan*/ * passwd; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cport; int /*<<< orphan*/ * chost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 TYPE_1__ snmp_client ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_toolinfo*) ; 

void
FUNC4(struct snmp_toolinfo *snmptoolctx)
{
	if (snmp_client.chost != NULL) {
		FUNC0(snmp_client.chost);
		snmp_client.chost = NULL;
	}

	if (snmp_client.cport != NULL) {
		FUNC0(snmp_client.cport);
		snmp_client.cport = NULL;
	}

	FUNC2(snmptoolctx);
	FUNC1(snmptoolctx);
	FUNC3(snmptoolctx);

	if (snmptoolctx->passwd != NULL) {
		FUNC0(snmptoolctx->passwd);
		snmptoolctx->passwd = NULL;
	}
}