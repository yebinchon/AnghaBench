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
typedef  int /*<<< orphan*/  uintmax_t ;
struct timecounter {unsigned int member_2; char* member_4; int member_5; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIC_CLOCK_TIMER ; 
 int /*<<< orphan*/  XLP_IO_CLK ; 
 int /*<<< orphan*/  XLP_PCI_DEVINFO_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_get_timecount ; 
 struct timecounter* platform_timecounter ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xlp_pic_base ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct timecounter pic_timecounter = {
		platform_get_timecount, /* get_timecount */
		0,                      /* no poll_pps */
		~0U,                    /* counter_mask */
		XLP_IO_CLK,            /* frequency */
		"XLRPIC",               /* name */
		2000,                   /* quality (adjusted in code) */
	};
        int i;
	int maxirt;

	xlp_pic_base = FUNC1(0);  /* TOOD: Add other nodes */
	maxirt = FUNC5(FUNC0(FUNC2()),
	    XLP_PCI_DEVINFO_REG0);
        FUNC6("Initializing PIC...@%jx %d IRTs\n", (uintmax_t)xlp_pic_base,
	    maxirt);
	/* Bind all PIC irqs to cpu 0 */
        for (i = 0; i < maxirt; i++)
	    FUNC4(xlp_pic_base, i, 0, 0, 1, 0,
	    1, 0, 0x1);

	FUNC3(xlp_pic_base, PIC_CLOCK_TIMER, ~0ULL, 0, 0);
	platform_timecounter = &pic_timecounter;
}