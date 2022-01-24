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
struct bxe_softc {TYPE_1__* context; } ;
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/ * vcxt; int /*<<< orphan*/  vcxt_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ILT_MEMOP_FREE ; 
 int FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bxe_softc *sc)
{
    int i;

    for (i = 0; i < FUNC0(sc); i++) {
        FUNC1(sc, &sc->context[i].vcxt_dma);
        sc->context[i].vcxt = NULL;
        sc->context[i].size = 0;
    }

    FUNC3(sc, ILT_MEMOP_FREE);

    FUNC2(sc);

}