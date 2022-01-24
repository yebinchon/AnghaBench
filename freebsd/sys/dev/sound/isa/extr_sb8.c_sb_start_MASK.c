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
typedef  int u_char ;
struct sb_info {int bd_flags; } ;
struct sb_chinfo {scalar_t__ dir; int blksz; int /*<<< orphan*/  fmt; struct sb_info* parent; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BD_F_DMARUN ; 
 int BD_F_HISPEED ; 
 int DSP_CMD_SPKON ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC1 (struct sb_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sb_info*) ; 

__attribute__((used)) static int
FUNC6(struct sb_chinfo *ch)
{
	struct sb_info *sb = ch->parent;
    	int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;
    	int stereo = (FUNC0(ch->fmt) > 1)? 1 : 0;
	int l = ch->blksz;
	u_char i;

	l--;

	FUNC3(sb);
	if (play)
		FUNC1(sb, DSP_CMD_SPKON);

	if (sb->bd_flags & BD_F_HISPEED)
		i = play? 0x90 : 0x98;
	else
		i = play? 0x1c : 0x2c;

	FUNC4(sb, 0x0e, stereo? 2 : 0);
	FUNC2(sb, 0x48, l);
       	FUNC1(sb, i);

	sb->bd_flags |= BD_F_DMARUN;
	FUNC5(sb);
	return 0;
}