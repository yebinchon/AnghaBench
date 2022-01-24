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
typedef  int u_char ;
struct TYPE_4__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  buffer; } ;
struct mss_info {TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mss_info*) ; 
 int /*<<< orphan*/  MSS_STATUS ; 
 int FUNC3 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mss_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mss_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
    	struct mss_info *mss = arg;
    	u_char c = 0, served = 0;
    	int i;

    	FUNC1(FUNC10("mss_intr\n"));
	FUNC8(mss);
    	FUNC3(mss, 11); /* fake read of status bits */

    	/* loop until there are interrupts, but no more than 10 times. */
    	for (i = 10; i > 0 && FUNC6(mss, MSS_STATUS) & 1; i--) {
		/* get exact reason for full-duplex boards */
		c = FUNC2(mss)? FUNC3(mss, 24) : 0x30;
		c &= ~served;
		if (FUNC11(mss->pch.buffer) && (c & 0x10)) {
	    		served |= 0x10;
			FUNC9(mss);
	    		FUNC5(mss->pch.channel);
			FUNC8(mss);
		}
		if (FUNC11(mss->rch.buffer) && (c & 0x20)) {
	    		served |= 0x20;
			FUNC9(mss);
	    		FUNC5(mss->rch.channel);
			FUNC8(mss);
		}
		/* now ack the interrupt */
		if (FUNC2(mss)) FUNC4(mss, 24, ~c); /* ack selectively */
		else FUNC7(mss, MSS_STATUS, 0);	/* Clear interrupt status */
    	}
    	if (i == 10) {
		FUNC0(FUNC10("mss_intr: irq, but not from mss\n"));
	} else if (served == 0) {
		FUNC0(FUNC10("mss_intr: unexpected irq with reason %x\n", c));
		/*
	 	* this should not happen... I have no idea what to do now.
	 	* maybe should do a sanity check and restart dmas ?
	 	*/
		FUNC7(mss, MSS_STATUS, 0);	/* Clear interrupt status */
    	}
	FUNC9(mss);
}