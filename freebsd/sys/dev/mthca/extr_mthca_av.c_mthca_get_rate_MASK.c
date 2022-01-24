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
typedef  int u8 ;
struct TYPE_2__ {int stat_rate_support; } ;
struct mthca_dev {scalar_t__* rate; TYPE_1__ limits; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct mthca_dev*) ; 

u8 FUNC4(struct mthca_dev *dev, int static_rate, u8 port)
{
	u8 rate;

	if (!static_rate || FUNC1(static_rate) >= dev->rate[port - 1])
		return 0;

	if (FUNC3(dev))
		rate = FUNC0(FUNC1(static_rate),
					  dev->rate[port - 1]);
	else
		rate = FUNC2(static_rate);

	if (!(dev->limits.stat_rate_support & (1 << rate)))
		rate = 1;

	return rate;
}