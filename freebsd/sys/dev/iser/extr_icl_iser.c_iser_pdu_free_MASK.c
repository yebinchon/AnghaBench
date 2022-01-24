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
struct icl_pdu {int dummy; } ;
struct icl_iser_pdu {int dummy; } ;
struct icl_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  icl_pdu_zone ; 
 struct icl_iser_pdu* FUNC0 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct icl_iser_pdu*) ; 

void
FUNC2(struct icl_conn *ic, struct icl_pdu *ip)
{
	struct icl_iser_pdu *iser_pdu = FUNC0(ip);

	FUNC1(icl_pdu_zone, iser_pdu);
}