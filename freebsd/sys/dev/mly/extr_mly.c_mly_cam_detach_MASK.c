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
struct mly_softc {int mly_cam_channels; int /*<<< orphan*/ * mly_cam_devq; int /*<<< orphan*/ ** mly_cam_sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct mly_softc *sc)
{
    int		i;
    
    FUNC5(1);

    FUNC0(sc);
    for (i = 0; i < sc->mly_cam_channels; i++) {
	if (sc->mly_cam_sim[i] != NULL) {
	    FUNC6(FUNC3(sc->mly_cam_sim[i]));
	    FUNC2(sc->mly_cam_sim[i], 0);
	}
    }
    FUNC1(sc);
    if (sc->mly_cam_devq != NULL)
	FUNC4(sc->mly_cam_devq);
}