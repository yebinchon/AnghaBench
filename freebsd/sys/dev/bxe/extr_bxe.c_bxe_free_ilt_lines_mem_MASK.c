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
struct bxe_softc {TYPE_1__* ilt; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lines; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BXE_ILT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct bxe_softc *sc)
{
    if (sc->ilt->lines != NULL) {
        FUNC0(sc->ilt->lines, M_BXE_ILT);
        sc->ilt->lines = NULL;
    }
}