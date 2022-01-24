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
struct pdu {TYPE_1__* pdu_bhs; } ;
struct TYPE_2__ {int bhs_total_ahs_len; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(const struct pdu *pdu)
{

	return (pdu->pdu_bhs->bhs_total_ahs_len * 4);
}