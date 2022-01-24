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
struct tws_softc {int /*<<< orphan*/ * intr_handle; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  tws_dev; } ;

/* Variables and functions */
 int FAILURE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  SETUP_INTR_RES ; 
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tws_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tws_intr ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct tws_softc *sc, int irqs)
{
    int i, error;

    for(i=0;i<irqs;i++) {
        if (!(sc->intr_handle[i])) {
            if ((error = FUNC0(sc->tws_dev, sc->irq_res[i],
                                    INTR_TYPE_CAM | INTR_MPSAFE,
                                    NULL, 
                                    tws_intr, sc, &sc->intr_handle[i]))) {
                FUNC1(sc, SETUP_INTR_RES);
                return(FAILURE);
            }
        }
    }
    return(SUCCESS);

}