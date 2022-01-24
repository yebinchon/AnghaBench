#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* channel; } ;
struct mss_info {scalar_t__ bd_id; TYPE_2__ pch; int /*<<< orphan*/ * opl_indexed_regs; int /*<<< orphan*/ * mss_indexed_regs; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 scalar_t__ MD_CS423X ; 
 scalar_t__ MD_YM0020 ; 
 int MSS_INDEXED_REGS ; 
 int OPL_INDEXED_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct mss_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mss_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mss_info*) ; 
 struct mss_info* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
    	/*
     	 * Restore the state taken below.
     	 */
    	struct mss_info *mss;
    	int i;

    	mss = FUNC7(dev);

    	if(mss->bd_id == MD_YM0020 || mss->bd_id == MD_CS423X) {
		/* This works on a Toshiba Libretto 100CT. */
		for (i = 0; i < MSS_INDEXED_REGS; i++)
    			FUNC0(mss, i, mss->mss_indexed_regs[i]);
		for (i = 0; i < OPL_INDEXED_REGS; i++)
    			FUNC1(mss, i, mss->opl_indexed_regs[i]);
		FUNC3(mss);
    	}

	if (mss->bd_id == MD_CS423X) {
		/* Needed on IBM Thinkpad 600E */
		FUNC4(mss);
		FUNC2(&mss->pch, mss->pch.channel->format);
		FUNC5(&mss->pch, mss->pch.channel->speed);
		FUNC6(mss);
	}

    	return 0;

}