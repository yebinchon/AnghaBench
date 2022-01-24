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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int FUNC3 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC4(struct bxe_softc *sc)
{
    int rc = FUNC3(sc);

    if (rc) {
        FUNC0(sc, "bxe_init_hw_common failed rc=%d\n", rc);
        return (rc);
    }

    /* In E2 2-PORT mode, same ext phy is used for the two paths */
    if (!FUNC1(sc)) {
        FUNC2(sc);
    }

    return (0);
}