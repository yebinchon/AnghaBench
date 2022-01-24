#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sc_pchinfo {int run; TYPE_1__* master; TYPE_1__* slave; struct sc_info* parent; } ;
struct sc_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  kobj_t ;
struct TYPE_4__ {int speed; scalar_t__ stereo; scalar_t__ b16; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_pchinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(kobj_t obj, void *data, int go)
{
	struct sc_pchinfo *ch = data;
	struct sc_info *sc = ch->parent;

	if (!FUNC0(go))
		return 0;

	FUNC8(sc->lock);
	if (go == PCMTRIG_START) {
		FUNC4(ch);
		FUNC6(sc, ch->master);
		FUNC2(sc);
		FUNC1(sc, 1);
#ifdef EMUDEBUG
		printf("start [%d bit, %s, %d hz]\n",
			ch->master->b16 ? 16 : 8,
			ch->master->stereo ? "stereo" : "mono",
			ch->master->speed);
		emu_vdump(sc, ch->master);
		emu_vdump(sc, ch->slave);
#endif
	}
	ch->run = (go == PCMTRIG_START) ? 1 : 0;
	FUNC5(sc, ch->master, ch->run);
	FUNC9(sc->lock);
	return 0;
}