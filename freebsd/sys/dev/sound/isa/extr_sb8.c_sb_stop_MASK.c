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
struct sb_info {int bd_flags; } ;
struct sb_chinfo {scalar_t__ dir; struct sb_info* parent; } ;

/* Variables and functions */
 int BD_F_DMARUN ; 
 int BD_F_HISPEED ; 
 int /*<<< orphan*/  DSP_CMD_DMAEXIT_8 ; 
 int /*<<< orphan*/  DSP_CMD_SPKOFF ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC0 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*) ; 

__attribute__((used)) static int
FUNC4(struct sb_chinfo *ch)
{
	struct sb_info *sb = ch->parent;
    	int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;

	FUNC1(sb);
    	if (sb->bd_flags & BD_F_HISPEED)
		FUNC2(sb);
	else {
#if 0
		/*
		 * NOTE: DSP_CMD_DMAEXIT_8 does not work with old
		 * soundblaster.
		 */
		sb_cmd(sb, DSP_CMD_DMAEXIT_8);
#endif
		FUNC2(sb);
	}

	if (play)
		FUNC0(sb, DSP_CMD_SPKOFF); /* speaker off */
	FUNC3(sb);
	sb->bd_flags &= ~BD_F_DMARUN;
	return 0;
}