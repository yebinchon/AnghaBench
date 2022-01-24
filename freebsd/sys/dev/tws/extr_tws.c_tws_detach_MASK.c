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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_5__ {TYPE_3__* q; } ;
struct TYPE_4__ {TYPE_3__* q; } ;
struct tws_softc {int obfl_q_overrun; int irqs; scalar_t__ intr_type; int /*<<< orphan*/  tws_clist; int /*<<< orphan*/  tws_cdev; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  gen_lock; int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  q_lock; TYPE_2__ trace_q; TYPE_1__ aen_q; scalar_t__ data_tag; int /*<<< orphan*/  ioctl_data_map; scalar_t__ ioctl_data_mem; TYPE_3__* scan_ccb; TYPE_3__* sense_bufs; TYPE_3__* reqs; int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  reg_res_id; scalar_t__ reg_res; int /*<<< orphan*/  tws_dev; int /*<<< orphan*/  mfa_res_id; scalar_t__ mfa_res; scalar_t__ cmd_tag; int /*<<< orphan*/  cmd_map; scalar_t__ dma_mem; scalar_t__ dma_mem_phys; int /*<<< orphan*/ * irq_res_id; scalar_t__* irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  timeout; scalar_t__ dma_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TWS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TWS_I2O0_HIMASK ; 
 int /*<<< orphan*/  TWS_I2O0_HOBDBC ; 
 scalar_t__ TWS_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWS_UNINIT_START ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct tws_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct tws_softc*,int) ; 
 int tws_queue_depth ; 
 int /*<<< orphan*/  FUNC18 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC23(device_t dev)
{
    struct tws_softc *sc = FUNC9(dev);
    int i;
    u_int32_t reg;

    FUNC1(sc, "entry", 0, 0);

    FUNC12(&sc->gen_lock);
    FUNC19(sc, TWS_UNINIT_START);
    FUNC13(&sc->gen_lock);

    /* needs to disable interrupt before detaching from cam */
    FUNC21(sc);
    /* clear door bell */
    FUNC22(sc, TWS_I2O0_HOBDBC, ~0, 4);
    reg = FUNC18(sc, TWS_I2O0_HIMASK, 4);
    FUNC1(sc, "turn-off-intr", reg, 0);
    sc->obfl_q_overrun = false;
    FUNC17(sc, 1);

    /* Teardown the state in our softc created in our attach routine. */
    /* Disconnect the interrupt handler. */
    FUNC20(sc);

    /* Release irq resource */
    for(i=0;i<sc->irqs;i++) {
        if ( sc->irq_res[i] ){
            if (FUNC6(sc->tws_dev,
                     SYS_RES_IRQ, sc->irq_res_id[i], sc->irq_res[i]))
                FUNC0(sc, "bus release irq resource", 
                                       i, sc->irq_res_id[i]);
        }
    }
    if ( sc->intr_type == TWS_MSI ) {
        FUNC14(sc->tws_dev);
    }

    FUNC16(sc);

    if (sc->dma_mem_phys)
	    FUNC4(sc->cmd_tag, sc->cmd_map);
    if (sc->dma_mem)
	    FUNC5(sc->cmd_tag, sc->dma_mem, sc->cmd_map);
    if (sc->cmd_tag)
	    FUNC2(sc->cmd_tag);

    /* Release memory resource */
    if ( sc->mfa_res ){
        if (FUNC6(sc->tws_dev,
                 SYS_RES_MEMORY, sc->mfa_res_id, sc->mfa_res))
            FUNC0(sc, "bus release mem resource", 0, sc->mfa_res_id);
    }
    if ( sc->reg_res ){
        if (FUNC6(sc->tws_dev,
                 SYS_RES_MEMORY, sc->reg_res_id, sc->reg_res))
            FUNC0(sc, "bus release mem resource", 0, sc->reg_res_id);
    }

    for ( i=0; i< tws_queue_depth; i++) {
	    if (sc->reqs[i].dma_map)
		    FUNC3(sc->data_tag, sc->reqs[i].dma_map);
	    FUNC7(&sc->reqs[i].timeout);
    }

    FUNC7(&sc->stats_timer);
    FUNC10(sc->reqs, M_TWS);
    FUNC10(sc->sense_bufs, M_TWS);
    FUNC10(sc->scan_ccb, M_TWS);
    if (sc->ioctl_data_mem)
            FUNC5(sc->data_tag, sc->ioctl_data_mem, sc->ioctl_data_map);
    if (sc->data_tag)
	    FUNC2(sc->data_tag);
    FUNC10(sc->aen_q.q, M_TWS);
    FUNC10(sc->trace_q.q, M_TWS);
    FUNC11(&sc->q_lock);
    FUNC11(&sc->sim_lock);
    FUNC11(&sc->gen_lock);
    FUNC11(&sc->io_lock);
    FUNC8(sc->tws_cdev);
    FUNC15(&sc->tws_clist);
    return (0);
}