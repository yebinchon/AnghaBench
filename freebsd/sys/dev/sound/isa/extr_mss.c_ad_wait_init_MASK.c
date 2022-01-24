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
struct mss_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MSS_IDXBUSY ; 
 int /*<<< orphan*/  MSS_INDEX ; 
 int FUNC1 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct mss_info *mss, int x)
{
    	int arg = x, n = 0; /* to shut up the compiler... */
    	for (; x > 0; x--)
		if ((n = FUNC1(mss, MSS_INDEX)) & MSS_IDXBUSY) FUNC0(10);
		else return n;
    	FUNC2("AD_WAIT_INIT FAILED %d 0x%02x\n", arg, n);
    	return n;
}