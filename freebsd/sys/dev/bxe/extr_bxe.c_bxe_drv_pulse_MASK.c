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
struct bxe_softc {int /*<<< orphan*/  fw_drv_pulse_wr_seq; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_pulse_mb; } ;

/* Variables and functions */
 size_t FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* func_mb ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc *sc)
{
    FUNC1(sc, func_mb[FUNC0(sc)].drv_pulse_mb,
             sc->fw_drv_pulse_wr_seq);
}