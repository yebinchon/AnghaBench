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
struct snmp_pdu {scalar_t__ version; scalar_t__ error_status; scalar_t__ nbindings; int type; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ SNMP_ERR_NOERROR ; 
 scalar_t__ SNMP_ERR_NOSUCHNAME ; 
#define  SNMP_PDU_GET 130 
#define  SNMP_PDU_GETBULK 129 
#define  SNMP_PDU_GETNEXT 128 
 int FUNC0 (struct snmp_pdu*,struct snmp_pdu*) ; 
 int FUNC1 (struct snmp_pdu*,struct snmp_pdu*) ; 
 int FUNC2 (struct snmp_pdu*,struct snmp_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int32_t
FUNC4(struct snmp_pdu *resp, struct snmp_pdu *req)
{
	if (resp == NULL || req == NULL)
		return (-2);

	if (resp->version != req->version) {
		FUNC3("Response has wrong version");
		return (-1);
	}

	if (resp->error_status == SNMP_ERR_NOSUCHNAME) {
		FUNC3("Error - No Such Name");
		return (0);
	}

	if (resp->error_status != SNMP_ERR_NOERROR) {
		FUNC3("Error %d in response", resp->error_status);
		return (-1);
	}

	if (resp->nbindings != req->nbindings && req->type != SNMP_PDU_GETBULK){
		FUNC3("Bad number of bindings in response");
		return (-1);
	}

	switch (req->type) {
		case SNMP_PDU_GET:
			return (FUNC0(resp,req));
		case SNMP_PDU_GETBULK:
			return (FUNC1(resp,req));
		case SNMP_PDU_GETNEXT:
			return (FUNC2(resp,req));
		default:
			/* NOTREACHED */
			break;
	}

	return (-2);
}