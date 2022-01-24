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
struct sec_softc {int dummy; } ;
struct sec_desc {TYPE_1__* sd_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  shd_eu_sel1; int /*<<< orphan*/  shd_eu_sel0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sec_softc*) ; 
 struct sec_desc* FUNC1 (struct sec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_softc*) ; 
 scalar_t__ FUNC4 (struct sec_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  controller ; 
 int /*<<< orphan*/  descriptors ; 
 scalar_t__ FUNC6 (struct sec_softc*,struct sec_desc*,int) ; 
 int FUNC7 (struct sec_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct sec_softc *sc)
{
	struct sec_desc *desc;
	int ch0, ch1;

	FUNC2(sc, descriptors);
	FUNC2(sc, controller);

	while (FUNC4(sc) > 0) {
		desc = FUNC1(sc);

		ch0 = FUNC7(sc, desc->sd_desc->shd_eu_sel0);
		ch1 = FUNC7(sc, desc->sd_desc->shd_eu_sel1);

		/*
		 * Both EU are used by the same channel.
		 * Enqueue descriptor in channel used by busy EUs.
		 */
		if (ch0 >= 0 && ch0 == ch1) {
			if (FUNC6(sc, desc, ch0) >= 0) {
				FUNC0(sc);
				continue;
			}
		}

		/*
		 * Only one EU is free.
		 * Enqueue descriptor in channel used by busy EU.
		 */
		if ((ch0 >= 0 && ch1 < 0) || (ch1 >= 0 && ch0 < 0)) {
			if (FUNC6(sc, desc, (ch0 >= 0) ? ch0 : ch1)
			    >= 0) {
				FUNC0(sc);
				continue;
			}
		}

		/*
		 * Both EU are free.
		 * Enqueue descriptor in first free channel.
		 */
		if (ch0 < 0 && ch1 < 0) {
			if (FUNC6(sc, desc, -1) >= 0) {
				FUNC0(sc);
				continue;
			}
		}

		/* Current descriptor can not be queued at the moment */
		FUNC3(sc);
		break;
	}

	FUNC5(sc, controller);
	FUNC5(sc, descriptors);
}