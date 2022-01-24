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
struct TYPE_4__ {int fmt; int dch; int /*<<< orphan*/  channel; scalar_t__ run; } ;
struct TYPE_3__ {int fmt; int dch; int /*<<< orphan*/  channel; scalar_t__ run; } ;
struct sb_info {int bd_flags; TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int AFMT_16BIT ; 
 int AFMT_8BIT ; 
 int BD_F_SB16X ; 
 int /*<<< orphan*/  DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  DSP_DATA_AVL16 ; 
 int /*<<< orphan*/  IRQ_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sb_info*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
    	struct sb_info *sb = (struct sb_info *)arg;
    	int reason, c;

    	/*
     	 * The Vibra16X has separate flags for 8 and 16 bit transfers, but
     	 * I have no idea how to tell capture from playback interrupts...
     	 */

	reason = 0;
	FUNC3(sb);
    	c = FUNC2(sb, IRQ_STAT);
    	if (c & 1)
		FUNC4(sb, DSP_DATA_AVAIL); /* 8-bit int ack */

    	if (c & 2)
		FUNC4(sb, DSP_DATA_AVL16); /* 16-bit int ack */
	FUNC5(sb);

	/*
	 * this tells us if the source is 8-bit or 16-bit dma. We
     	 * have to check the io channel to map it to read or write...
     	 */

	if (sb->bd_flags & BD_F_SB16X) {
    		if (c & 1) { /* 8-bit format */
			if (sb->pch.fmt & AFMT_8BIT)
				reason |= 1;
			if (sb->rch.fmt & AFMT_8BIT)
				reason |= 2;
    		}
    		if (c & 2) { /* 16-bit format */
			if (sb->pch.fmt & AFMT_16BIT)
				reason |= 1;
			if (sb->rch.fmt & AFMT_16BIT)
				reason |= 2;
    		}
	} else {
    		if (c & 1) { /* 8-bit dma */
			if (sb->pch.dch == 1)
				reason |= 1;
			if (sb->rch.dch == 1)
				reason |= 2;
    		}
    		if (c & 2) { /* 16-bit dma */
			if (sb->pch.dch == 2)
				reason |= 1;
			if (sb->rch.dch == 2)
				reason |= 2;
    		}
	}
#if 0
    	printf("sb_intr: reason=%d c=0x%x\n", reason, c);
#endif
    	if ((reason & 1) && (sb->pch.run))
		FUNC0(sb->pch.channel);

    	if ((reason & 2) && (sb->rch.run))
		FUNC0(sb->rch.channel);
}