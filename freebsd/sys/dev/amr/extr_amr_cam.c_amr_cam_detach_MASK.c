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
struct amr_softc {int amr_maxchan; int /*<<< orphan*/ * amr_cam_devq; int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/ ** amr_cam_sim; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct amr_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct amr_softc *sc;
	int		chn;

	sc = FUNC3(dev);
	FUNC4(&sc->amr_list_lock);
	for (chn = 0; chn < sc->amr_maxchan; chn++) {
		/*
		 * If a sim was allocated for this channel, free it
		 */
		if (sc->amr_cam_sim[chn] != NULL) {
			FUNC6(FUNC1(sc->amr_cam_sim[chn]));
			FUNC0(sc->amr_cam_sim[chn], FALSE);
		}
	}
	FUNC5(&sc->amr_list_lock);

	/* Now free the devq */
	if (sc->amr_cam_devq != NULL)
		FUNC2(sc->amr_cam_devq);

	return (0);
}