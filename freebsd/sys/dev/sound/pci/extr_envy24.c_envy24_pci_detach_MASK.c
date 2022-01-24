#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sc_info {int adcn; int dacn; int /*<<< orphan*/  lock; int /*<<< orphan*/  mt; int /*<<< orphan*/  mtid; int /*<<< orphan*/  ds; int /*<<< orphan*/  dsid; int /*<<< orphan*/  ddma; int /*<<< orphan*/  ddmaid; int /*<<< orphan*/  cs; int /*<<< orphan*/  csid; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  dmat; TYPE_2__* cfg; int /*<<< orphan*/ * dac; int /*<<< orphan*/ * adc; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {TYPE_1__* codec; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  M_ENVY24 ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct sc_info *sc;
	int r;
	int i;

#if(0)
	device_printf(dev, "envy24_pci_detach()\n");
#endif
	sc = FUNC7(dev);
	if (sc == NULL)
		return 0;
	r = FUNC8(dev);
	if (r)
		return r;

	FUNC5(sc);
	if (sc->cfg->codec->destroy != NULL) {
		for (i = 0; i < sc->adcn; i++)
			sc->cfg->codec->destroy(sc->adc[i]);
		for (i = 0; i < sc->dacn; i++)
			sc->cfg->codec->destroy(sc->dac[i]);
	}
	FUNC4(sc->cfg);
	FUNC0(sc->dmat);
	FUNC2(dev, sc->irq, sc->ih);
	FUNC1(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC1(dev, SYS_RES_IOPORT, sc->csid, sc->cs);
	FUNC1(dev, SYS_RES_IOPORT, sc->ddmaid, sc->ddma);
	FUNC1(dev, SYS_RES_IOPORT, sc->dsid, sc->ds);
	FUNC1(dev, SYS_RES_IOPORT, sc->mtid, sc->mt);
	FUNC9(sc->lock);
	FUNC6(sc, M_ENVY24);
	return 0;
}