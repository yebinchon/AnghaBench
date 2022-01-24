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
struct ess_info {int dummy; } ;
struct ess_chinfo {int hwch; scalar_t__ stopping; int /*<<< orphan*/  blksz; int /*<<< orphan*/  fmt; int /*<<< orphan*/  spd; int /*<<< orphan*/  dir; struct ess_info* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_CMD_SPKON ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC0 (struct ess_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*) ; 
 int FUNC3 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ess_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ess_info*,int,int) ; 

__attribute__((used)) static int
FUNC8(struct ess_chinfo *ch)
{
	struct ess_info *sc = ch->parent;
    	int play = (ch->dir == PCMDIR_PLAY)? 1 : 0;

	FUNC2(sc);
	FUNC5(sc, ch->hwch, ch->dir, ch->spd, ch->fmt, ch->blksz);
	ch->stopping = 0;
	if (ch->hwch == 1)
		FUNC7(sc, 0xb8, FUNC3(sc, 0xb8) | 0x01);
	else
		FUNC4(sc, 0x78, FUNC1(sc, 0x78) | 0x03);
	if (play)
		FUNC0(sc, DSP_CMD_SPKON);
	FUNC6(sc);
	return 0;
}