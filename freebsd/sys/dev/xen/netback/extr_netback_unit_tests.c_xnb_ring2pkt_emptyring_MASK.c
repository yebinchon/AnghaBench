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
struct xnb_pkt {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_3__ {TYPE_2__ txb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct xnb_pkt*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC2(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int num_consumed;

	num_consumed = FUNC1(&pkt, &xnb_unit_pvt.txb,
	                            xnb_unit_pvt.txb.req_cons);
	FUNC0(num_consumed == 0);
}