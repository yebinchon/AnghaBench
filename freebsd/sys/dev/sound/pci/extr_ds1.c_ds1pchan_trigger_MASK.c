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
struct sc_pchinfo {int run; int /*<<< orphan*/  rsnum; int /*<<< orphan*/  lsnum; int /*<<< orphan*/  fmt; struct sc_info* parent; } ;
struct sc_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PCMTRIG_START ; 
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_pchinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, int go)
{
	struct sc_pchinfo *ch = data;
	struct sc_info *sc = ch->parent;
	int stereo;

	if (!FUNC1(go))
		return 0;
	stereo = (FUNC0(ch->fmt) > 1)? 1 : 0;
	if (go == PCMTRIG_START) {
		ch->run = 1;
		FUNC3(ch);
		FUNC2(sc, ch->lsnum, 1);
		FUNC2(sc, ch->rsnum, stereo);
		FUNC5(sc->lock);
		FUNC4(sc, YDSXGR_MODE, 0x00000003, 4);
		FUNC6(sc->lock);
	} else {
		ch->run = 0;
		/* ds_setuppch(ch); */
		FUNC2(sc, ch->lsnum, 0);
		FUNC2(sc, ch->rsnum, 0);
	}

	return 0;
}