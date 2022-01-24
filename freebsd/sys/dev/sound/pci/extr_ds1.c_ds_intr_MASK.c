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
struct sc_info {int currbank; int /*<<< orphan*/  lock; TYPE_2__* rch; TYPE_1__* pch; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; scalar_t__ run; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; scalar_t__ run; } ;

/* Variables and functions */
 int DS1_CHANS ; 
 int /*<<< orphan*/  YDSXGR_CTRLSELECT ; 
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  YDSXGR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *p)
{
	struct sc_info *sc = (struct sc_info *)p;
	u_int32_t i, x;

	FUNC4(sc->lock);
	i = FUNC2(sc, YDSXGR_STATUS, 4);
	if (i & 0x00008000)
		FUNC1(sc->dev, "timeout irq\n");
	if (i & 0x80008000) {
		FUNC3(sc, YDSXGR_STATUS, i & 0x80008000, 4);
		sc->currbank = FUNC2(sc, YDSXGR_CTRLSELECT, 4) & 0x00000001;

		x = 0;
		for (i = 0; i < DS1_CHANS; i++) {
			if (sc->pch[i].run) {
				x = 1;
				FUNC5(sc->lock);
				FUNC0(sc->pch[i].channel);
				FUNC4(sc->lock);
			}
		}
		for (i = 0; i < 2; i++) {
			if (sc->rch[i].run) {
				x = 1;
				FUNC5(sc->lock);
				FUNC0(sc->rch[i].channel);
				FUNC4(sc->lock);
			}
		}
		i = FUNC2(sc, YDSXGR_MODE, 4);
		if (x)
			FUNC3(sc, YDSXGR_MODE, i | 0x00000002, 4);

	}
	FUNC5(sc->lock);
}