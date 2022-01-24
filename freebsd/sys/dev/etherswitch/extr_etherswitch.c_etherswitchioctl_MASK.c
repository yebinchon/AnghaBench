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
typedef  int u_long ;
struct thread {int dummy; } ;
struct etherswitch_softc {int /*<<< orphan*/  sc_dev; } ;
struct cdev {struct etherswitch_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  etherswitch_vlangroup_t ;
struct TYPE_4__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
typedef  TYPE_1__ etherswitch_reg_t ;
struct TYPE_5__ {int /*<<< orphan*/  es_port; } ;
typedef  TYPE_2__ etherswitch_portid_t ;
typedef  int /*<<< orphan*/  etherswitch_port_t ;
struct TYPE_6__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; int /*<<< orphan*/  phy; } ;
typedef  TYPE_3__ etherswitch_phyreg_t ;
typedef  int /*<<< orphan*/  etherswitch_info_t ;
typedef  int /*<<< orphan*/  etherswitch_conf_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
 int FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IOETHERSWITCHFLUSHALL 142 
#define  IOETHERSWITCHFLUSHPORT 141 
#define  IOETHERSWITCHGETCONF 140 
#define  IOETHERSWITCHGETINFO 139 
#define  IOETHERSWITCHGETPHYREG 138 
#define  IOETHERSWITCHGETPORT 137 
#define  IOETHERSWITCHGETREG 136 
#define  IOETHERSWITCHGETTABLE 135 
#define  IOETHERSWITCHGETTABLEENTRY 134 
#define  IOETHERSWITCHGETVLANGROUP 133 
#define  IOETHERSWITCHSETCONF 132 
#define  IOETHERSWITCHSETPHYREG 131 
#define  IOETHERSWITCHSETPORT 130 
#define  IOETHERSWITCHSETREG 129 
#define  IOETHERSWITCHSETVLANGROUP 128 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct cdev *cdev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
	struct etherswitch_softc *sc = cdev->si_drv1;
	device_t dev = sc->sc_dev;
	device_t etherswitch = FUNC19(dev);
	etherswitch_conf_t conf;
	etherswitch_info_t *info;
	etherswitch_reg_t *reg;
	etherswitch_phyreg_t *phyreg;
	etherswitch_portid_t *portid;
	int error = 0;

	switch (cmd) {
	case IOETHERSWITCHGETINFO:
		info = FUNC5(etherswitch);
		FUNC17(info, data, sizeof(etherswitch_info_t));
		break;
		
	case IOETHERSWITCHGETREG:
		reg = (etherswitch_reg_t *)data;
		FUNC8(etherswitch);
		reg->val = FUNC10(etherswitch, reg->reg);
		FUNC14(etherswitch);
		break;
	
	case IOETHERSWITCHSETREG:
		reg = (etherswitch_reg_t *)data;
		FUNC8(etherswitch);
		error = FUNC16(etherswitch, reg->reg, reg->val);
		FUNC14(etherswitch);
		break;

	case IOETHERSWITCHGETPORT:
		error = FUNC6(etherswitch, (etherswitch_port_t *)data);
		break;

	case IOETHERSWITCHSETPORT:
		error = FUNC12(etherswitch, (etherswitch_port_t *)data);
		break;

	case IOETHERSWITCHGETVLANGROUP:
		error = FUNC7(etherswitch, (etherswitch_vlangroup_t *)data);
		break;

	case IOETHERSWITCHSETVLANGROUP:
		error = FUNC13(etherswitch, (etherswitch_vlangroup_t *)data);
		break;

	case IOETHERSWITCHGETPHYREG:
		phyreg = (etherswitch_phyreg_t *)data;
		phyreg->val = FUNC9(etherswitch, phyreg->phy, phyreg->reg);
		break;
	
	case IOETHERSWITCHSETPHYREG:
		phyreg = (etherswitch_phyreg_t *)data;
		error = FUNC15(etherswitch, phyreg->phy, phyreg->reg, phyreg->val);
		break;

	case IOETHERSWITCHGETCONF:
		FUNC18(&conf, sizeof(etherswitch_conf_t));
		error = FUNC4(etherswitch, &conf);
		FUNC17(&conf, data, sizeof(etherswitch_conf_t));
		break;

	case IOETHERSWITCHSETCONF:
		error = FUNC11(etherswitch, (etherswitch_conf_t *)data);
		break;

	case IOETHERSWITCHFLUSHALL:
		error = FUNC2(etherswitch);
		break;

	case IOETHERSWITCHFLUSHPORT:
		portid = (etherswitch_portid_t *)data;
		error = FUNC3(etherswitch, portid->es_port);
		break;

	case IOETHERSWITCHGETTABLE:
		error = FUNC0(etherswitch, (void *) data);
		break;

	case IOETHERSWITCHGETTABLEENTRY:
		error = FUNC1(etherswitch, (void *) data);
		break;

	default:
		error = ENOTTY;
	}

	return (error);
}