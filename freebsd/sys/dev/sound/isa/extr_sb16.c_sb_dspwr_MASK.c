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
typedef  int u_char ;
struct sb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ td_intr_nesting_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SBDSP_CMD ; 
 int /*<<< orphan*/  SBDSP_STATUS ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct sb_info *sb, u_char val)
{
    	int  i;

    	for (i = 0; i < 1000; i++) {
		if ((FUNC2(sb, SBDSP_STATUS) & 0x80))
	    		FUNC0((i > 100)? 1000 : 10);
	    	else {
			FUNC3(sb, SBDSP_CMD, val);
			return 1;
		}
    	}
	if (curthread->td_intr_nesting_level == 0)
		FUNC1("sb_dspwr(0x%02x) timed out.\n", val);
    	return 0;
}