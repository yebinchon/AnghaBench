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
struct tws_softc {int irqs; int /*<<< orphan*/ ** intr_handle; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  tws_dev; } ;

/* Variables and functions */
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC1(struct tws_softc *sc)
{
    int i, error;

    for(i=0;i<sc->irqs;i++) {
        if (sc->intr_handle[i]) {
            error = FUNC0(sc->tws_dev,
                                      sc->irq_res[i], sc->intr_handle[i]);
            sc->intr_handle[i] = NULL;
        }
    }
    return(SUCCESS);
}