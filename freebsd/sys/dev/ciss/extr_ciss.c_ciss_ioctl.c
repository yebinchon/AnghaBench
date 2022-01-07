
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


union ciss_statrequest {size_t cs_item; int cs_qstat; } ;
typedef int u_long ;
typedef int u_int8_t ;
struct thread {int dummy; } ;
struct ciss_softc {int ciss_mtx; TYPE_2__* ciss_id; TYPE_1__* ciss_cfg; int ciss_dev; int * ciss_qstat; } ;
struct ciss_qstat {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int int32_t ;
struct TYPE_10__ {int board_id; int dev_fn; int bus; } ;
typedef TYPE_3__ cciss_pci_info_struct ;
struct TYPE_11__ {int count; int delay; } ;
typedef TYPE_4__ cciss_coalint_struct ;
typedef scalar_t__ caddr_t ;
struct TYPE_13__ {int * buf; int buf_size; int error_info; int Request; int LUN_info; } ;
struct TYPE_12__ {int buf; int buf_size; int error_info; int Request; int LUN_info; } ;
struct TYPE_9__ {int * running_firmware_revision; } ;
struct TYPE_8__ {int bus_types; int heartbeat; int * server_name; int interrupt_coalesce_count; int interrupt_coalesce_delay; } ;
typedef int NodeName_type ;
typedef TYPE_5__ IOCTL_Command_struct32 ;
typedef TYPE_6__ IOCTL_Command_struct ;
typedef int Heartbeat_type ;
typedef int FirmwareVer_type ;
typedef int DriverVer_type ;
typedef int BusTypes_type ;
 int CISS_DRIVER_VERSION ;
 int EINVAL ;
 int EIO ;
 int ENOIOCTL ;
 int bcopy (int *,int *,int) ;
 int ciss_update_config (struct ciss_softc*) ;
 int ciss_user_command (struct ciss_softc*,TYPE_6__*) ;
 int debug (int,char*,int const) ;
 int debug_called (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pci_get_bus (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;

__attribute__((used)) static int
ciss_ioctl(struct cdev *dev, u_long cmd, caddr_t addr, int32_t flag, struct thread *p)
{
    struct ciss_softc *sc;
    IOCTL_Command_struct *ioc = (IOCTL_Command_struct *)addr;

    IOCTL_Command_struct32 *ioc32 = (IOCTL_Command_struct32 *)addr;
    IOCTL_Command_struct ioc_swab;

    int error;

    debug_called(1);

    sc = (struct ciss_softc *)dev->si_drv1;
    error = 0;
    mtx_lock(&sc->ciss_mtx);

    switch(cmd) {
    case 135:
    {
 union ciss_statrequest *cr = (union ciss_statrequest *)addr;

 switch (cr->cs_item) {
 case 129:
 case 128:
     bcopy(&sc->ciss_qstat[cr->cs_item], &cr->cs_qstat,
  sizeof(struct ciss_qstat));
     break;
 default:
     error = ENOIOCTL;
     break;
 }

 break;
    }

    case 136:
    {
 cciss_pci_info_struct *pis = (cciss_pci_info_struct *)addr;

 pis->bus = pci_get_bus(sc->ciss_dev);
 pis->dev_fn = pci_get_slot(sc->ciss_dev);
        pis->board_id = (pci_get_subvendor(sc->ciss_dev) << 16) |
                pci_get_subdevice(sc->ciss_dev);

 break;
    }

    case 138:
    {
 cciss_coalint_struct *cis = (cciss_coalint_struct *)addr;

 cis->delay = sc->ciss_cfg->interrupt_coalesce_delay;
 cis->count = sc->ciss_cfg->interrupt_coalesce_count;

 break;
    }

    case 131:
    {
 cciss_coalint_struct *cis = (cciss_coalint_struct *)addr;

 if ((cis->delay == 0) && (cis->count == 0)) {
     error = EINVAL;
     break;
 }





 sc->ciss_cfg->interrupt_coalesce_delay = cis->delay;
 sc->ciss_cfg->interrupt_coalesce_count = cis->count;

 if (ciss_update_config(sc))
     error = EIO;


 break;
    }

    case 137:
 bcopy(sc->ciss_cfg->server_name, (NodeName_type *)addr,
       sizeof(NodeName_type));
 break;

    case 130:
 bcopy((NodeName_type *)addr, sc->ciss_cfg->server_name,
       sizeof(NodeName_type));
 if (ciss_update_config(sc))
     error = EIO;
 break;

    case 139:
 *(Heartbeat_type *)addr = sc->ciss_cfg->heartbeat;
 break;

    case 142:
 *(BusTypes_type *)addr = sc->ciss_cfg->bus_types;
 break;

    case 140:
 bcopy(sc->ciss_id->running_firmware_revision, (FirmwareVer_type *)addr,
       sizeof(FirmwareVer_type));
 break;

    case 141:
 *(DriverVer_type *)addr = CISS_DRIVER_VERSION;
 break;

    case 132:







 break;


    case 133:
 ioc_swab.LUN_info = ioc32->LUN_info;
 ioc_swab.Request = ioc32->Request;
 ioc_swab.error_info = ioc32->error_info;
 ioc_swab.buf_size = ioc32->buf_size;
 ioc_swab.buf = (u_int8_t *)(uintptr_t)ioc32->buf;
 ioc = &ioc_swab;



    case 134:
 error = ciss_user_command(sc, ioc);
 break;

    default:
 debug(0, "unknown ioctl 0x%lx", cmd);

 debug(1, "CCISS_GETPCIINFO:   0x%lx", 136);
 debug(1, "CCISS_GETINTINFO:   0x%lx", 138);
 debug(1, "CCISS_SETINTINFO:   0x%lx", 131);
 debug(1, "CCISS_GETNODENAME:  0x%lx", 137);
 debug(1, "CCISS_SETNODENAME:  0x%lx", 130);
 debug(1, "CCISS_GETHEARTBEAT: 0x%lx", 139);
 debug(1, "CCISS_GETBUSTYPES:  0x%lx", 142);
 debug(1, "CCISS_GETFIRMVER:   0x%lx", 140);
 debug(1, "CCISS_GETDRIVERVER: 0x%lx", 141);
 debug(1, "CCISS_REVALIDVOLS:  0x%lx", 132);
 debug(1, "CCISS_PASSTHRU:     0x%lx", 134);

 error = ENOIOCTL;
 break;
    }

    mtx_unlock(&sc->ciss_mtx);
    return(error);
}
