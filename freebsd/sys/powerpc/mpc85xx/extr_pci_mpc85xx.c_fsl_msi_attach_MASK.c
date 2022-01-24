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
struct TYPE_2__ {scalar_t__ target; int /*<<< orphan*/  irq_base; } ;
struct fsl_msi_softc {scalar_t__ sc_base; TYPE_1__ sc_map; struct fsl_msi_irq* sc_msi_irq; } ;
struct fsl_msi_irq {int irq; scalar_t__ reg; int /*<<< orphan*/  cookie; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FSL_MSI_TARGET ; 
 int FSL_NUM_IRQS ; 
 int /*<<< orphan*/  FSL_NUM_MSIS ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int M_BESTFIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fsl_msi_irq*,int /*<<< orphan*/ *) ; 
 struct fsl_msi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_msi_intr_filter ; 
 int /*<<< orphan*/  fsl_msis ; 
 int /*<<< orphan*/ * msi_vmem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slist ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct fsl_msi_softc *sc;
	struct fsl_msi_irq *irq;
	int i;

	sc = FUNC4(dev);

	if (msi_vmem == NULL)
		msi_vmem = FUNC8("MPIC MSI", 0, 0, 1, 1, M_BESTFIT | M_WAITOK);

	/* Manually play with resource entries. */
	sc->sc_base = FUNC2(dev, SYS_RES_MEMORY, 0);
	sc->sc_map.target = FUNC2(dev, SYS_RES_MEMORY, 1);

	if (sc->sc_map.target == 0)
		sc->sc_map.target = sc->sc_base + FSL_MSI_TARGET;

	for (i = 0; i < FSL_NUM_IRQS; i++) {
		irq = &sc->sc_msi_irq[i];
		irq->irq = i;
		irq->reg = sc->sc_base + 16 * i;
		irq->res = FUNC1(dev, SYS_RES_IRQ,
		    &irq->irq, RF_ACTIVE);
		FUNC3(dev, irq->res, INTR_TYPE_MISC | INTR_MPSAFE,
		    fsl_msi_intr_filter, NULL, irq, &irq->cookie);
	}
	sc->sc_map.irq_base = FUNC6(dev, FUNC5(dev),
	    FSL_NUM_MSIS, 0, 0);

	/* Let vmem and the IRQ subsystem work their magic for allocations. */
	FUNC7(msi_vmem, sc->sc_map.irq_base, FSL_NUM_MSIS, M_WAITOK);

	FUNC0(&fsl_msis, &sc->sc_map, slist);

	return (0);
}