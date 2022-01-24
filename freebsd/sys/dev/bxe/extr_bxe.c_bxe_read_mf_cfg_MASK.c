#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* mf_config; } ;
struct TYPE_5__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int /*<<< orphan*/  flags; TYPE_2__ devinfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  BXE_MF_FUNC_DIS ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int E1H_FUNC_MAX ; 
 int FUNC_MF_CFG_FUNC_DISABLED ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bxe_softc*) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*) ; 
 size_t FUNC7 (struct bxe_softc*) ; 
 int VN_0 ; 
 TYPE_3__* func_mf_config ; 

__attribute__((used)) static void
FUNC8(struct bxe_softc *sc)
{
    int n = (FUNC2(sc) ? 2 : 1);
    int abs_func;
    int vn;

    if (FUNC1(sc)) {
        return; /* what should be the default bvalue in this case */
    }

    /*
     * The formula for computing the absolute function number is...
     * For 2 port configuration (4 functions per port):
     *   abs_func = 2 * vn + SC_PORT + SC_PATH
     * For 4 port configuration (2 functions per port):
     *   abs_func = 4 * vn + 2 * SC_PORT + SC_PATH
     */
    for (vn = VN_0; vn < FUNC4(sc); vn++) {
        abs_func = (n * (2 * vn + FUNC6(sc)) + FUNC5(sc));
        if (abs_func >= E1H_FUNC_MAX) {
            break;
        }
        sc->devinfo.mf_info.mf_config[vn] =
            FUNC3(sc, func_mf_config[abs_func].config);
    }

    if (sc->devinfo.mf_info.mf_config[FUNC7(sc)] &
        FUNC_MF_CFG_FUNC_DISABLED) {
        FUNC0(sc, DBG_LOAD, "mf_cfg function disabled\n");
        sc->flags |= BXE_MF_FUNC_DIS;
    } else {
        FUNC0(sc, DBG_LOAD, "mf_cfg function enabled\n");
        sc->flags &= ~BXE_MF_FUNC_DIS;
    }
}