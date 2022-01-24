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
struct iop_softc {struct intr_config_hook* iop_delayed_attach; TYPE_1__* reg; } ;
struct intr_config_hook {struct iop_softc* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct TYPE_2__ {int iqueue; int oqueue_intr_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_PSTIOP ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (struct intr_config_hook*) ; 
 int /*<<< orphan*/  FUNC2 (struct intr_config_hook*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iop_attach ; 
 int /*<<< orphan*/  FUNC3 (struct iop_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iop_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct iop_softc*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(struct iop_softc *sc)
{
    int mfa, timeout = 10000;

    while ((mfa = sc->reg->iqueue) == 0xffffffff && --timeout)
	FUNC0(1000);
    if (!timeout) {
	FUNC7("pstiop: no free mfa\n");
	return 0;
    }
    FUNC3(sc, mfa);

    sc->reg->oqueue_intr_mask = 0xffffffff;

    if (!FUNC5(sc)) {
	FUNC7("pstiop: no reset response\n");
	return 0;
    }

    if (!FUNC4(sc)) {
	FUNC7("pstiop: init outbound queue failed\n");
	return 0;
    }

    /* register iop_attach to be run when interrupts are enabled */
    if (!(sc->iop_delayed_attach = (struct intr_config_hook *)
				   FUNC6(sizeof(struct intr_config_hook),
				   M_PSTIOP, M_NOWAIT | M_ZERO))) {
	FUNC7("pstiop: malloc of delayed attach hook failed\n");
	return 0;
    }
    sc->iop_delayed_attach->ich_func = iop_attach;
    sc->iop_delayed_attach->ich_arg = sc;
    if (FUNC1(sc->iop_delayed_attach)) {
	FUNC7("pstiop: config_intrhook_establish failed\n");
	FUNC2(sc->iop_delayed_attach, M_PSTIOP);
    }
    return 1;
}