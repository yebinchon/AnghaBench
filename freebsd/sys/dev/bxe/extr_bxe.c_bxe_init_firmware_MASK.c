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
struct bxe_softc {int /*<<< orphan*/  iro_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  e1_iro_arr ; 
 int /*<<< orphan*/  e1h_iro_arr ; 
 int /*<<< orphan*/  e2_iro_arr ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC7(struct bxe_softc *sc)
{
    if (FUNC1(sc)) {
        FUNC4(sc);
        sc->iro_array = e1_iro_arr;
    } else if (FUNC2(sc)) {
        FUNC5(sc);
        sc->iro_array = e1h_iro_arr;
    } else if (!FUNC3(sc)) {
        FUNC6(sc);
        sc->iro_array = e2_iro_arr;
    } else {
        FUNC0(sc, "Unsupported chip revision\n");
        return (-1);
    }

    return (0);
}