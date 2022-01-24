#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union ciss_statrequest {size_t cs_item; int /*<<< orphan*/  cs_qstat; } ;
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct thread {int dummy; } ;
struct ciss_softc {int /*<<< orphan*/  ciss_mtx; TYPE_2__* ciss_id; TYPE_1__* ciss_cfg; int /*<<< orphan*/  ciss_dev; int /*<<< orphan*/ * ciss_qstat; } ;
struct ciss_qstat {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_10__ {int board_id; int /*<<< orphan*/  dev_fn; int /*<<< orphan*/  bus; } ;
typedef  TYPE_3__ cciss_pci_info_struct ;
struct TYPE_11__ {int /*<<< orphan*/  count; int /*<<< orphan*/  delay; } ;
typedef  TYPE_4__ cciss_coalint_struct ;
typedef  scalar_t__ caddr_t ;
struct TYPE_13__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  error_info; int /*<<< orphan*/  Request; int /*<<< orphan*/  LUN_info; } ;
struct TYPE_12__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  error_info; int /*<<< orphan*/  Request; int /*<<< orphan*/  LUN_info; } ;
struct TYPE_9__ {int /*<<< orphan*/ * running_firmware_revision; } ;
struct TYPE_8__ {int /*<<< orphan*/  bus_types; int /*<<< orphan*/  heartbeat; int /*<<< orphan*/ * server_name; int /*<<< orphan*/  interrupt_coalesce_count; int /*<<< orphan*/  interrupt_coalesce_delay; } ;
typedef  int /*<<< orphan*/  NodeName_type ;
typedef  TYPE_5__ IOCTL_Command_struct32 ;
typedef  TYPE_6__ IOCTL_Command_struct ;
typedef  int /*<<< orphan*/  Heartbeat_type ;
typedef  int /*<<< orphan*/  FirmwareVer_type ;
typedef  int /*<<< orphan*/  DriverVer_type ;
typedef  int /*<<< orphan*/  BusTypes_type ;

/* Variables and functions */
#define  CCISS_GETBUSTYPES 142 
#define  CCISS_GETDRIVERVER 141 
#define  CCISS_GETFIRMVER 140 
#define  CCISS_GETHEARTBEAT 139 
#define  CCISS_GETINTINFO 138 
#define  CCISS_GETNODENAME 137 
#define  CCISS_GETPCIINFO 136 
#define  CCISS_GETQSTATS 135 
#define  CCISS_PASSTHRU 134 
#define  CCISS_PASSTHRU32 133 
#define  CCISS_REVALIDVOLS 132 
#define  CCISS_SETINTINFO 131 
#define  CCISS_SETNODENAME 130 
#define  CISSQ_FREE 129 
#define  CISSQ_NOTIFY 128 
 int /*<<< orphan*/  CISS_DRIVER_VERSION ; 
 int EINVAL ; 
 int EIO ; 
 int ENOIOCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*) ; 
 int FUNC2 (struct ciss_softc*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, u_long cmd, caddr_t addr, int32_t flag, struct thread *p)
{
    struct ciss_softc		*sc;
    IOCTL_Command_struct	*ioc	= (IOCTL_Command_struct *)addr;
#ifdef __amd64__
    IOCTL_Command_struct32	*ioc32	= (IOCTL_Command_struct32 *)addr;
    IOCTL_Command_struct	ioc_swab;
#endif
    int				error;

    FUNC4(1);

    sc = (struct ciss_softc *)dev->si_drv1;
    error = 0;
    FUNC5(&sc->ciss_mtx);

    switch(cmd) {
    case CCISS_GETQSTATS:
    {
	union ciss_statrequest *cr = (union ciss_statrequest *)addr;

	switch (cr->cs_item) {
	case CISSQ_FREE:
	case CISSQ_NOTIFY:
	    FUNC0(&sc->ciss_qstat[cr->cs_item], &cr->cs_qstat,
		sizeof(struct ciss_qstat));
	    break;
	default:
	    error = ENOIOCTL;
	    break;
	}

	break;
    }

    case CCISS_GETPCIINFO:
    {
	cciss_pci_info_struct	*pis = (cciss_pci_info_struct *)addr;

	pis->bus = FUNC7(sc->ciss_dev);
	pis->dev_fn = FUNC8(sc->ciss_dev);
        pis->board_id = (FUNC10(sc->ciss_dev) << 16) |
                FUNC9(sc->ciss_dev);

	break;
    }

    case CCISS_GETINTINFO:
    {
	cciss_coalint_struct	*cis = (cciss_coalint_struct *)addr;

	cis->delay = sc->ciss_cfg->interrupt_coalesce_delay;
	cis->count = sc->ciss_cfg->interrupt_coalesce_count;

	break;
    }

    case CCISS_SETINTINFO:
    {
	cciss_coalint_struct	*cis = (cciss_coalint_struct *)addr;

	if ((cis->delay == 0) && (cis->count == 0)) {
	    error = EINVAL;
	    break;
	}

	/*
	 * XXX apparently this is only safe if the controller is idle,
	 *     we should suspend it before doing this.
	 */
	sc->ciss_cfg->interrupt_coalesce_delay = cis->delay;
	sc->ciss_cfg->interrupt_coalesce_count = cis->count;

	if (FUNC1(sc))
	    error = EIO;

	/* XXX resume the controller here */
	break;
    }

    case CCISS_GETNODENAME:
	FUNC0(sc->ciss_cfg->server_name, (NodeName_type *)addr,
	      sizeof(NodeName_type));
	break;

    case CCISS_SETNODENAME:
	FUNC0((NodeName_type *)addr, sc->ciss_cfg->server_name,
	      sizeof(NodeName_type));
	if (FUNC1(sc))
	    error = EIO;
	break;

    case CCISS_GETHEARTBEAT:
	*(Heartbeat_type *)addr = sc->ciss_cfg->heartbeat;
	break;

    case CCISS_GETBUSTYPES:
	*(BusTypes_type *)addr = sc->ciss_cfg->bus_types;
	break;

    case CCISS_GETFIRMVER:
	FUNC0(sc->ciss_id->running_firmware_revision, (FirmwareVer_type *)addr,
	      sizeof(FirmwareVer_type));
	break;

    case CCISS_GETDRIVERVER:
	*(DriverVer_type *)addr = CISS_DRIVER_VERSION;
	break;

    case CCISS_REVALIDVOLS:
	/*
	 * This is a bit ugly; to do it "right" we really need
	 * to find any disks that have changed, kick CAM off them,
	 * then rescan only these disks.  It'd be nice if they
	 * a) told us which disk(s) they were going to play with,
	 * and b) which ones had arrived. 8(
	 */
	break;

#ifdef __amd64__
    case CCISS_PASSTHRU32:
	ioc_swab.LUN_info	= ioc32->LUN_info;
	ioc_swab.Request	= ioc32->Request;
	ioc_swab.error_info	= ioc32->error_info;
	ioc_swab.buf_size	= ioc32->buf_size;
	ioc_swab.buf		= (u_int8_t *)(uintptr_t)ioc32->buf;
	ioc			= &ioc_swab;
	/* FALLTHROUGH */
#endif

    case CCISS_PASSTHRU:
	error = FUNC2(sc, ioc);
	break;

    default:
	FUNC3(0, "unknown ioctl 0x%lx", cmd);

	FUNC3(1, "CCISS_GETPCIINFO:   0x%lx", CCISS_GETPCIINFO);
	FUNC3(1, "CCISS_GETINTINFO:   0x%lx", CCISS_GETINTINFO);
	FUNC3(1, "CCISS_SETINTINFO:   0x%lx", CCISS_SETINTINFO);
	FUNC3(1, "CCISS_GETNODENAME:  0x%lx", CCISS_GETNODENAME);
	FUNC3(1, "CCISS_SETNODENAME:  0x%lx", CCISS_SETNODENAME);
	FUNC3(1, "CCISS_GETHEARTBEAT: 0x%lx", CCISS_GETHEARTBEAT);
	FUNC3(1, "CCISS_GETBUSTYPES:  0x%lx", CCISS_GETBUSTYPES);
	FUNC3(1, "CCISS_GETFIRMVER:   0x%lx", CCISS_GETFIRMVER);
	FUNC3(1, "CCISS_GETDRIVERVER: 0x%lx", CCISS_GETDRIVERVER);
	FUNC3(1, "CCISS_REVALIDVOLS:  0x%lx", CCISS_REVALIDVOLS);
	FUNC3(1, "CCISS_PASSTHRU:     0x%lx", CCISS_PASSTHRU);

	error = ENOIOCTL;
	break;
    }

    FUNC6(&sc->ciss_mtx);
    return(error);
}