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
struct mrsas_softc {int msix_vectors; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_softc*,int) ; 

__attribute__((used)) static void
FUNC2(struct cam_sim *sim)
{
	int i;
	struct mrsas_softc *sc = (struct mrsas_softc *)FUNC0(sim);

	if (sc->msix_vectors != 0){
		for (i=0; i<sc->msix_vectors; i++){
			FUNC1(sc, i);
		}
	} else {
		FUNC1(sc, 0);
	}
}