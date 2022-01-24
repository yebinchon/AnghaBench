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
struct iser_conn {scalar_t__ state; } ;
struct icl_pdu {TYPE_1__* ip_bhs; } ;
struct icl_iser_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bhs_opcode; } ;

/* Variables and functions */
 scalar_t__ ISER_CONN_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct icl_iser_pdu*) ; 
 struct iser_conn* FUNC1 (struct icl_conn*) ; 
 struct icl_iser_pdu* FUNC2 (struct icl_pdu*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct icl_iser_pdu*,struct iser_conn*) ; 
 int FUNC5 (struct iser_conn*,struct icl_iser_pdu*) ; 
 int FUNC6 (struct iser_conn*,struct icl_iser_pdu*) ; 
 scalar_t__ FUNC7 (int) ; 

void
FUNC8(struct icl_conn *ic, struct icl_pdu *ip)
{
	struct iser_conn *iser_conn = FUNC1(ic);
	struct icl_iser_pdu *iser_pdu = FUNC2(ip);
	int ret;

	if (iser_conn->state != ISER_CONN_UP)
		return;

	ret = FUNC4(iser_pdu, iser_conn);
	if (ret) {
		FUNC0("Failed to map TX descriptor pdu %p", iser_pdu);
		return;
	}

	if (FUNC3(ip->ip_bhs->bhs_opcode)) {
		ret = FUNC6(iser_conn, iser_pdu);
		if (FUNC7(ret))
			FUNC0("Failed to send control pdu %p", iser_pdu);
	} else {
		ret = FUNC5(iser_conn, iser_pdu);
		if (FUNC7(ret))
			FUNC0("Failed to send command pdu %p", iser_pdu);
	}
}