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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct TYPE_5__ {TYPE_3__ ips_ich; int /*<<< orphan*/  queue; int /*<<< orphan*/  adapter_dmatag; int /*<<< orphan*/  irqcookie; void* ips_adapter_intr; void* irqres; void* irqrid; int /*<<< orphan*/ * iores; void* rid; int /*<<< orphan*/  iotype; void* ips_poll_cmd; void* ips_issue_cmd; void* ips_adapter_reinit; int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  timer; int /*<<< orphan*/  cmd_sema; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ips_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 scalar_t__ IPS_COPPERHEAD_DEVICE_ID ; 
 scalar_t__ IPS_MARCO_DEVICE_ID ; 
 int /*<<< orphan*/  IPS_MAX_SG_ELEMENTS ; 
 scalar_t__ IPS_MORPHEUS_DEVICE_ID ; 
 int /*<<< orphan*/  MTX_DEF ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *,void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 void* ips_copperhead_intr ; 
 void* ips_copperhead_poll ; 
 void* ips_copperhead_reinit ; 
 int /*<<< orphan*/  ips_intrhook ; 
 void* ips_issue_copperhead_cmd ; 
 void* ips_issue_morpheus_cmd ; 
 void* ips_morpheus_intr ; 
 void* ips_morpheus_poll ; 
 void* ips_morpheus_reinit ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC18(device_t dev)
{
        ips_softc_t *sc;

        FUNC0(1, dev, "in attach.\n");
        sc = (ips_softc_t *)FUNC10(dev);
        sc->dev = dev;
	FUNC13(&sc->queue_mtx, "IPS bioqueue lock", NULL, MTX_DEF);
	FUNC17(&sc->cmd_sema, 0, "IPS Command Semaphore");
	FUNC8(&sc->timer, &sc->queue_mtx, 0);

        if(FUNC15(dev) == IPS_MORPHEUS_DEVICE_ID){
		sc->ips_adapter_reinit = ips_morpheus_reinit;
                sc->ips_adapter_intr = ips_morpheus_intr;
		sc->ips_issue_cmd    = ips_issue_morpheus_cmd;
		sc->ips_poll_cmd     = ips_morpheus_poll;
        } else if(FUNC15(dev) == IPS_COPPERHEAD_DEVICE_ID){
		sc->ips_adapter_reinit = ips_copperhead_reinit;
                sc->ips_adapter_intr = ips_copperhead_intr;
		sc->ips_issue_cmd    = ips_issue_copperhead_cmd;
		sc->ips_poll_cmd     = ips_copperhead_poll;
	} else if (FUNC15(dev) == IPS_MARCO_DEVICE_ID){
		sc->ips_adapter_reinit = ips_morpheus_reinit;
		sc->ips_adapter_intr = ips_morpheus_intr;
		sc->ips_issue_cmd = ips_issue_morpheus_cmd;
		sc->ips_poll_cmd     = ips_morpheus_poll;
	} else
                goto error;
        /* make sure busmastering is on */
	FUNC14(dev);
        /* setting up io space */
        sc->iores = NULL;
	FUNC2(10, "trying MEMIO\n");
	if(FUNC15(dev) == IPS_COPPERHEAD_DEVICE_ID)
		sc->rid = FUNC1(1);
	else
		sc->rid = FUNC1(0);
	sc->iotype = SYS_RES_MEMORY;
	sc->iores = FUNC4(dev, sc->iotype, &sc->rid,
	    RF_ACTIVE);
        if(!sc->iores){
                FUNC2(10, "trying PORTIO\n");
                sc->rid = FUNC1(0);
                sc->iotype = SYS_RES_IOPORT;
                sc->iores = FUNC4(dev, sc->iotype, 
			&sc->rid, RF_ACTIVE);
        }
        if(sc->iores == NULL){
                FUNC11(dev, "resource allocation failed\n");
                return (ENXIO);
        }
        /*allocate an interrupt. when does the irq become active? after leaving attach? */
        sc->irqrid = 0;
        if(!(sc->irqres = FUNC4(dev, SYS_RES_IRQ,
		&sc->irqrid, RF_SHAREABLE | RF_ACTIVE))){
                FUNC11(dev, "irq allocation failed\n");
                goto error;
        }
	if(FUNC7(dev, sc->irqres, INTR_TYPE_BIO|INTR_MPSAFE, NULL, 
	    sc->ips_adapter_intr, sc, &sc->irqcookie)){
                FUNC11(dev, "irq setup failed\n");
                goto error;
        }
	if (FUNC5(	/* PCI parent */FUNC6(dev),
				/* alignemnt */	1,
				/* boundary  */	0,
				/* lowaddr   */	BUS_SPACE_MAXADDR_32BIT,
				/* highaddr  */	BUS_SPACE_MAXADDR,
				/* filter    */	NULL,
				/* filterarg */	NULL,
				/* maxsize   */	BUS_SPACE_MAXSIZE_32BIT,
				/* numsegs   */	IPS_MAX_SG_ELEMENTS,
				/* maxsegsize*/	BUS_SPACE_MAXSIZE_32BIT,
				/* flags     */	0,
				/* lockfunc  */ NULL,
				/* lockarg   */ NULL,
				&sc->adapter_dmatag) != 0) {
                FUNC11(dev, "can't alloc dma tag\n");
                goto error;
        }
	sc->ips_ich.ich_func = ips_intrhook;
	sc->ips_ich.ich_arg = sc;
	FUNC3(&sc->queue);
	if (FUNC9(&sc->ips_ich) != 0) {
		FUNC16("IPS can't establish configuration hook\n");
		goto error;
	}
        return 0;
error:
	FUNC12(sc);
        return (ENXIO);
}