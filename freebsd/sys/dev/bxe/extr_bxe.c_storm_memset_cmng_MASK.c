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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct rate_shaping_vars_per_vn {int dummy; } ;
struct fairness_vars_per_vn {int dummy; } ;
struct cmng_struct_per_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * vnic_min_rate; int /*<<< orphan*/ * vnic_max_rate; } ;
struct cmng_init {TYPE_1__ vnic; int /*<<< orphan*/  port; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int FUNC0 (struct bxe_softc*) ; 
 int VN_0 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,scalar_t__,size_t,scalar_t__*) ; 
 int FUNC5 (struct bxe_softc*,int) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc,
                  struct cmng_init *cmng,
                  uint8_t          port)
{
    int vn;
    int func;
    uint32_t addr;
    size_t size;

    addr = (BAR_XSTRORM_INTMEM +
            FUNC1(port));
    size = sizeof(struct cmng_struct_per_port);
    FUNC4(sc, addr, size, (uint32_t *)&cmng->port);

    for (vn = VN_0; vn < FUNC0(sc); vn++) {
        func = FUNC5(sc, vn);

        addr = (BAR_XSTRORM_INTMEM +
                FUNC3(func));
        size = sizeof(struct rate_shaping_vars_per_vn);
        FUNC4(sc, addr, size,
                                  (uint32_t *)&cmng->vnic.vnic_max_rate[vn]);

        addr = (BAR_XSTRORM_INTMEM +
                FUNC2(func));
        size = sizeof(struct fairness_vars_per_vn);
        FUNC4(sc, addr, size,
                                  (uint32_t *)&cmng->vnic.vnic_min_rate[vn]);
    }
}