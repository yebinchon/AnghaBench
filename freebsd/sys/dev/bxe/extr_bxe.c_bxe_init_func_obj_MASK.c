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
struct bxe_softc {int /*<<< orphan*/  func_obj; scalar_t__ dmae_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bxe_func_sp_drv ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  func_afex_rdata ; 
 int /*<<< orphan*/  func_rdata ; 

__attribute__((used)) static void
FUNC3(struct bxe_softc *sc)
{
    sc->dmae_ready = 0;

    FUNC2(sc,
                        &sc->func_obj,
                        FUNC0(sc, func_rdata),
                        FUNC1(sc, func_rdata),
                        FUNC0(sc, func_afex_rdata),
                        FUNC1(sc, func_afex_rdata),
                        &bxe_func_sp_drv);
}