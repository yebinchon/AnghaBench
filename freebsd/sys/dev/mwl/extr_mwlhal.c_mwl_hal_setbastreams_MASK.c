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
struct mwl_hal {int dummy; } ;
struct TYPE_2__ {int mh_bastreams; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct mwl_hal*) ; 
 int MWL_BASTREAMS_MAX ; 

void
FUNC1(struct mwl_hal *mh, int mask)
{
	FUNC0(mh)->mh_bastreams = mask & ((1<<MWL_BASTREAMS_MAX)-1);
}