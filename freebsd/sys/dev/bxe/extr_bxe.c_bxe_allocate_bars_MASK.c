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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_int ;
struct bxe_softc {TYPE_1__* bar; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ kva; int /*<<< orphan*/ * resource; int /*<<< orphan*/  handle; int /*<<< orphan*/  tag; int /*<<< orphan*/  rid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_BARS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct bxe_softc *sc)
{
    u_int flags;
    int i;

    FUNC3(sc->bar, 0, sizeof(sc->bar));

    for (i = 0; i < MAX_BARS; i++) {

        /* memory resources reside at BARs 0, 2, 4 */
        /* Run `pciconf -lb` to see mappings */
        if ((i != 0) && (i != 2) && (i != 4)) {
            continue;
        }

        sc->bar[i].rid = FUNC1(i);

        flags = RF_ACTIVE;
        if (i == 0) {
            flags |= RF_SHAREABLE;
        }

        if ((sc->bar[i].resource =
             FUNC2(sc->dev,
                                    SYS_RES_MEMORY,
                                    &sc->bar[i].rid,
                                    flags)) == NULL) {
            return (0);
        }

        sc->bar[i].tag    = FUNC5(sc->bar[i].resource);
        sc->bar[i].handle = FUNC4(sc->bar[i].resource);
        sc->bar[i].kva    = (vm_offset_t)FUNC9(sc->bar[i].resource);

        FUNC0(sc, "PCI BAR%d [%02x] memory allocated: %#jx-%#jx (%jd) -> %#jx\n",
              i, FUNC1(i),
              FUNC8(sc->bar[i].resource),
              FUNC6(sc->bar[i].resource),
              FUNC7(sc->bar[i].resource),
              (uintmax_t)sc->bar[i].kva);
    }

    return (0);
}