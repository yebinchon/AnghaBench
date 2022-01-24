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
struct pdu {struct pdu* pdu_bhs; struct pdu* pdu_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pdu*) ; 

void
FUNC1(struct pdu *pdu)
{

	FUNC0(pdu->pdu_data);
	FUNC0(pdu->pdu_bhs);
	FUNC0(pdu);
}