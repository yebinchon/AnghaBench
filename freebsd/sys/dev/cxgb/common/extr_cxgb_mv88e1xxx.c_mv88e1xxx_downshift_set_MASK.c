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
 int /*<<< orphan*/  MV88E1XXX_EXT_SPECIFIC_CNTRL ; 
 int M_DOWNSHIFT_CNT ; 
 int FUNC0 (int) ; 
 int V_DOWNSHIFT_ENABLE ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct cphy *cphy, int downshift_enable)
{
	/*
	 * Set the downshift counter to 2 so we try to establish Gb link
	 * twice before downshifting.
	 */
	return FUNC1(cphy, 0, MV88E1XXX_EXT_SPECIFIC_CNTRL,
		V_DOWNSHIFT_ENABLE | FUNC0(M_DOWNSHIFT_CNT),
		downshift_enable ? V_DOWNSHIFT_ENABLE | FUNC0(2) : 0);
}