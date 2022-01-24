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
struct tstorm_eth_function_common_config {int /*<<< orphan*/  member_0; } ;
struct bxe_softc {int dummy; } ;
struct bxe_func_init_params {int func_flgs; int /*<<< orphan*/  spq_prod; int /*<<< orphan*/  func_id; int /*<<< orphan*/  spq_map; int /*<<< orphan*/  pf_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int FUNC_FLG_SPQ ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ XSEM_REG_FAST_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct tstorm_eth_function_common_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc            *sc,
              struct bxe_func_init_params *p)
{
    struct tstorm_eth_function_common_config tcfg = { 0 };

    if (FUNC0(sc)) {
        FUNC3(sc, &tcfg, p->func_id);
    }

    /* Enable the function in the FW */
    FUNC6(sc, p->func_id, p->pf_id);
    FUNC4(sc, p->func_id, 1);

    /* spq */
    if (p->func_flgs & FUNC_FLG_SPQ) {
        FUNC5(sc, p->spq_map, p->func_id);
        FUNC1(sc,
               (XSEM_REG_FAST_MEMORY + FUNC2(p->func_id)),
               p->spq_prod);
    }
}