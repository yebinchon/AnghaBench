#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sc_info {TYPE_1__* ch; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ run; scalar_t__ run_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  PCMTRIG_ABORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct sc_info *sc;
	int i;

	sc = FUNC3(dev);
	FUNC0(sc);
	for (i = 0 ; i < 3; i++) {
		sc->ch[i].run_save = sc->ch[i].run;
		if (sc->ch[i].run) {
			FUNC1(sc);
			FUNC2(0, &sc->ch[i], PCMTRIG_ABORT);
			FUNC0(sc);
		}
	}
	FUNC1(sc);
	return (0);
}