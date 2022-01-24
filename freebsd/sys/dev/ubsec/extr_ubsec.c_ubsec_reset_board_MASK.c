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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ubsec_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_CTRL ; 
 int /*<<< orphan*/  volatile BS_CTRL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/  volatile) ; 

__attribute__((used)) static void
FUNC3(struct ubsec_softc *sc)
{
    volatile u_int32_t ctrl;

    ctrl = FUNC1(sc, BS_CTRL);
    ctrl |= BS_CTRL_RESET;
    FUNC2(sc, BS_CTRL, ctrl);

    /*
     * Wait aprox. 30 PCI clocks = 900 ns = 0.9 us
     */
    FUNC0(10);
}