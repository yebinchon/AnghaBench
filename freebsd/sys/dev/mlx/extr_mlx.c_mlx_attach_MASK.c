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
struct TYPE_4__ {int /*<<< orphan*/  rs_code; } ;
struct mlx_softc {int mlx_iftype; int (* mlx_fw_handshake ) (struct mlx_softc*,int*,int*,int*,int) ;int mlx_currevent; int /*<<< orphan*/  mlx_timeout; TYPE_3__* mlx_dev_t; int /*<<< orphan*/  mlx_dev; TYPE_1__ mlx_rebuildstat; scalar_t__ mlx_background; TYPE_2__* mlx_enq2; int /*<<< orphan*/  mlx_buffer_dmat; int /*<<< orphan*/  mlx_io_lock; int /*<<< orphan*/  mlx_parent_dmat; int /*<<< orphan*/  mlx_intr; int /*<<< orphan*/ * mlx_irq; int /*<<< orphan*/  (* mlx_intaction ) (struct mlx_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mlx_findcomplete; int /*<<< orphan*/  mlx_tryqueue; int /*<<< orphan*/  mlx_bioq; int /*<<< orphan*/  mlx_freecmds; int /*<<< orphan*/  mlx_work; } ;
struct mlx_enquiry_old {int me_fwminor; int me_fwmajor; } ;
struct mlx_enquiry2 {int dummy; } ;
struct TYPE_6__ {struct mlx_softc* si_drv1; } ;
struct TYPE_5__ {int me_firmware_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  MLX_CMD_ENQUIRY2 ; 
 int /*<<< orphan*/  MLX_CMD_ENQUIRY_OLD ; 
#define  MLX_IFTYPE_2 131 
#define  MLX_IFTYPE_3 130 
#define  MLX_IFTYPE_4 129 
#define  MLX_IFTYPE_5 128 
 int /*<<< orphan*/  MLX_INTACTION_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_softc*) ; 
 int /*<<< orphan*/  MLX_MAXPHYS ; 
 int /*<<< orphan*/  MLX_NSEG ; 
 int /*<<< orphan*/  MLX_REBUILDSTAT_IDLE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx_enquiry_old*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx_cdevsw ; 
 int /*<<< orphan*/  FUNC14 (struct mlx_softc*) ; 
 void* FUNC15 (struct mlx_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct mlx_softc*,int,int,int) ; 
 int /*<<< orphan*/  mlx_intr ; 
 int /*<<< orphan*/  mlx_periodic ; 
 int FUNC17 (struct mlx_softc*) ; 
 int /*<<< orphan*/  mlx_v3_findcomplete ; 
 int FUNC18 (struct mlx_softc*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx_v3_tryqueue ; 
 int /*<<< orphan*/  mlx_v4_findcomplete ; 
 int FUNC20 (struct mlx_softc*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx_v4_tryqueue ; 
 int /*<<< orphan*/  mlx_v5_findcomplete ; 
 int FUNC22 (struct mlx_softc*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx_v5_tryqueue ; 
 int /*<<< orphan*/  FUNC24 (struct mlx_softc*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct mlx_softc*,int*,int*,int*,int) ; 

int
FUNC26(struct mlx_softc *sc)
{
    struct mlx_enquiry_old	*meo;
    int				rid, error, fwminor, hscode, hserror, hsparam1, hsparam2, hsmsg;

    FUNC9(1);

    /*
     * Initialise per-controller queues.
     */
    FUNC3(&sc->mlx_work);
    FUNC3(&sc->mlx_freecmds);
    FUNC4(&sc->mlx_bioq);

    /* 
     * Select accessor methods based on controller interface type.
     */
    switch(sc->mlx_iftype) {
    case MLX_IFTYPE_2:
    case MLX_IFTYPE_3:
	sc->mlx_tryqueue	= mlx_v3_tryqueue;
	sc->mlx_findcomplete	= mlx_v3_findcomplete;
	sc->mlx_intaction	= mlx_v3_intaction;
	sc->mlx_fw_handshake	= mlx_v3_fw_handshake;
	break;
    case MLX_IFTYPE_4:
	sc->mlx_tryqueue	= mlx_v4_tryqueue;
	sc->mlx_findcomplete	= mlx_v4_findcomplete;
	sc->mlx_intaction	= mlx_v4_intaction;
	sc->mlx_fw_handshake	= mlx_v4_fw_handshake;
	break;
    case MLX_IFTYPE_5:
	sc->mlx_tryqueue	= mlx_v5_tryqueue;
	sc->mlx_findcomplete	= mlx_v5_findcomplete;
	sc->mlx_intaction	= mlx_v5_intaction;
	sc->mlx_fw_handshake	= mlx_v5_fw_handshake;
	break;
    default:
	return(ENXIO);		/* should never happen */
    }

    /* disable interrupts before we start talking to the controller */
    FUNC1(sc);
    sc->mlx_intaction(sc, MLX_INTACTION_DISABLE);
    FUNC2(sc);

    /* 
     * Wait for the controller to come ready, handshake with the firmware if required.
     * This is typically only necessary on platforms where the controller BIOS does not
     * run.
     */
    hsmsg = 0;
    FUNC0(1000);
    while ((hscode = sc->mlx_fw_handshake(sc, &hserror, &hsparam1, &hsparam2,
	hsmsg == 0)) != 0) {
	/* report first time around... */
	if (hsmsg == 0) {
	    FUNC11(sc->mlx_dev, "controller initialisation in progress...\n");
	    hsmsg = 1;
	}
	/* did we get a real message? */
	if (hscode == 2) {
	    hscode = FUNC16(sc, hserror, hsparam1, hsparam2);
	    /* fatal initialisation error? */
	    if (hscode != 0) {
		return(ENXIO);
	    }
	}
    }
    if (hsmsg == 1)
	FUNC11(sc->mlx_dev, "initialisation complete.\n");

    /* 
     * Allocate and connect our interrupt.
     */
    rid = 0;
    sc->mlx_irq = FUNC5(sc->mlx_dev, SYS_RES_IRQ, &rid,
        RF_SHAREABLE | RF_ACTIVE);
    if (sc->mlx_irq == NULL) {
	FUNC11(sc->mlx_dev, "can't allocate interrupt\n");
	return(ENXIO);
    }
    error = FUNC7(sc->mlx_dev, sc->mlx_irq, INTR_TYPE_BIO |
	INTR_ENTROPY | INTR_MPSAFE, NULL, mlx_intr, sc, &sc->mlx_intr);
    if (error) {
	FUNC11(sc->mlx_dev, "can't set up interrupt\n");
	return(ENXIO);
    }

    /*
     * Create DMA tag for mapping buffers into controller-addressable space.
     */
    error = FUNC6(sc->mlx_parent_dmat, 	/* parent */
			       1, 0, 			/* align, boundary */
			       BUS_SPACE_MAXADDR,	/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       MLX_MAXPHYS,		/* maxsize */
			       MLX_NSEG,		/* nsegments */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			       0,			/* flags */
			       busdma_lock_mutex,	/* lockfunc */
			       &sc->mlx_io_lock,	/* lockarg */
			       &sc->mlx_buffer_dmat);
    if (error != 0) {
	FUNC11(sc->mlx_dev, "can't allocate buffer DMA tag\n");
	return(ENOMEM);
    }

    /*
     * Create some initial scatter/gather mappings so we can run the probe
     * commands.
     */
    error = FUNC17(sc);
    if (error != 0) {
	FUNC11(sc->mlx_dev, "can't make initial s/g list mapping\n");
	return(error);
    }

    /*
     * We don't (yet) know where the event log is up to.
     */
    sc->mlx_currevent = -1;

    /* 
     * Obtain controller feature information
     */
    FUNC1(sc);
    if ((sc->mlx_enq2 = FUNC15(sc, MLX_CMD_ENQUIRY2, sizeof(struct mlx_enquiry2), NULL)) == NULL) {
	FUNC2(sc);
	FUNC11(sc->mlx_dev, "ENQUIRY2 failed\n");
	return(ENXIO);
    }

    /*
     * Do quirk/feature related things.
     */
    fwminor = (sc->mlx_enq2->me_firmware_id >> 8) & 0xff;
    switch(sc->mlx_iftype) {
    case MLX_IFTYPE_2:
	/* These controllers don't report the firmware version in the ENQUIRY2 response */
	if ((meo = FUNC15(sc, MLX_CMD_ENQUIRY_OLD, sizeof(struct mlx_enquiry_old), NULL)) == NULL) {
	    FUNC2(sc);
	    FUNC11(sc->mlx_dev, "ENQUIRY_OLD failed\n");
	    return(ENXIO);
	}
	sc->mlx_enq2->me_firmware_id = ('0' << 24) | (0 << 16) | (meo->me_fwminor << 8) | meo->me_fwmajor;
	
	/* XXX require 2.42 or better (PCI) */
	if (meo->me_fwminor < 42) {
	    FUNC11(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
	    FUNC11(sc->mlx_dev, " *** WARNING *** Use revision 2.42 or later\n");
	}
	FUNC12(meo, M_DEVBUF);
	break;
    case MLX_IFTYPE_3:
	/* XXX certify 3.52? */
	if (fwminor < 51) {
	    FUNC11(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
	    FUNC11(sc->mlx_dev, " *** WARNING *** Use revision 3.51 or later\n");
	}
	break;
    case MLX_IFTYPE_4:
	/* XXX certify firmware versions? */
	if (fwminor < 6) {
	    FUNC11(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
	    FUNC11(sc->mlx_dev, " *** WARNING *** Use revision 4.06 or later\n");
	}
	break;
    case MLX_IFTYPE_5:
	if (fwminor < 7) {
	    FUNC11(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
	    FUNC11(sc->mlx_dev, " *** WARNING *** Use revision 5.07 or later\n");
	}
	break;
    default:
	FUNC2(sc);
	return(ENXIO);		/* should never happen */
    }
    FUNC2(sc);

    /*
     * Create the final scatter/gather mappings now that we have characterised the controller.
     */
    error = FUNC17(sc);
    if (error != 0) {
	FUNC11(sc->mlx_dev, "can't make final s/g list mapping\n");
	return(error);
    }

    /*
     * No user-requested background operation is in progress.
     */
    sc->mlx_background = 0;
    sc->mlx_rebuildstat.rs_code = MLX_REBUILDSTAT_IDLE;

    /*
     * Create the control device.
     */
    sc->mlx_dev_t = FUNC13(&mlx_cdevsw, 0, UID_ROOT, GID_OPERATOR, 
			     S_IRUSR | S_IWUSR, "mlx%d", FUNC10(sc->mlx_dev));
    sc->mlx_dev_t->si_drv1 = sc;

    /*
     * Start the timeout routine.
     */
    FUNC8(&sc->mlx_timeout, hz, mlx_periodic, sc);

    /* print a little information about the controller */
    FUNC14(sc);

    return(0);
}