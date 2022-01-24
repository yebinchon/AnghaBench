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
struct cphy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cphy*,int,int,unsigned int*) ; 
 int FUNC1 (struct cphy*,int,int,unsigned int) ; 

int FUNC2(struct cphy *phy, int mmd, int reg, unsigned int clear,
			unsigned int set)
{
	int ret;
	unsigned int val;

	ret = FUNC0(phy, mmd, reg, &val);
	if (!ret) {
		val &= ~clear;
		ret = FUNC1(phy, mmd, reg, val | set);
	}
	return ret;
}