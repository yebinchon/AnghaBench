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
typedef  int u_int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct fm801_info {int play_flip; int play_start; int play_nextblk; int rec_flip; int rec_start; int rec_nextblk; TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FM_INTSTATUS ; 
 int FM_INTSTATUS_MPU ; 
 int FM_INTSTATUS_PLAY ; 
 int FM_INTSTATUS_REC ; 
 int FM_INTSTATUS_VOL ; 
 int /*<<< orphan*/  FM_PLAY_DMABUF1 ; 
 int /*<<< orphan*/  FM_PLAY_DMABUF2 ; 
 int /*<<< orphan*/  FM_REC_DMABUF1 ; 
 int /*<<< orphan*/  FM_REC_DMABUF2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fm801_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fm801_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(void *p)
{
	struct fm801_info 	*fm801 = (struct fm801_info *)p;
	u_int32_t       	intsrc = FUNC2(fm801, FM_INTSTATUS, 2);

	FUNC0("\nfm801_intr intsrc 0x%x ", intsrc);

	if(intsrc & FM_INTSTATUS_PLAY) {
		fm801->play_flip++;
		if(fm801->play_flip & 1) {
			FUNC3(fm801, FM_PLAY_DMABUF1, fm801->play_start,4);
		} else
			FUNC3(fm801, FM_PLAY_DMABUF2, fm801->play_nextblk,4);
		FUNC1(fm801->pch.channel);
	}

	if(intsrc & FM_INTSTATUS_REC) {
		fm801->rec_flip++;
		if(fm801->rec_flip & 1) {
			FUNC3(fm801, FM_REC_DMABUF1, fm801->rec_start,4);
		} else
			FUNC3(fm801, FM_REC_DMABUF2, fm801->rec_nextblk,4);
		FUNC1(fm801->rch.channel);
	}

	if ( intsrc & FM_INTSTATUS_MPU ) {
		/* This is a TODOish thing... */
		FUNC3(fm801, FM_INTSTATUS, intsrc & FM_INTSTATUS_MPU,2);
	}

	if ( intsrc & FM_INTSTATUS_VOL ) {
		/* This is a TODOish thing... */
		FUNC3(fm801, FM_INTSTATUS, intsrc & FM_INTSTATUS_VOL,2);
	}

	FUNC0("fm801_intr clear\n\n");
	FUNC3(fm801, FM_INTSTATUS, intsrc & (FM_INTSTATUS_PLAY | FM_INTSTATUS_REC), 2);
}