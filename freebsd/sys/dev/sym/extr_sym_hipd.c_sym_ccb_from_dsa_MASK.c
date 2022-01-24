#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  TYPE_1__* hcb_p ;
typedef  TYPE_2__* ccb_p ;
struct TYPE_6__ {scalar_t__ ccb_ba; struct TYPE_6__* link_ccbh; } ;
struct TYPE_5__ {TYPE_2__** ccbh; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static ccb_p FUNC1(hcb_p np, u32 dsa)
{
	int hcode;
	ccb_p cp;

	hcode = FUNC0(dsa);
	cp = np->ccbh[hcode];
	while (cp) {
		if (cp->ccb_ba == dsa)
			break;
		cp = cp->link_ccbh;
	}

	return cp;
}