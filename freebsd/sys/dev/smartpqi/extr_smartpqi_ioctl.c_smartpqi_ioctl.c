
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pqisrc_softstate {int dummy; } ;
struct cdev {struct pqisrc_softstate* si_drv1; } ;
typedef int caddr_t ;






 int DBG_ERR (char*) ;
 int DBG_FUNC (char*,int,...) ;
 int DBG_WARN (char*,int) ;
 int ENOTTY ;
 int PQI_STATUS_SUCCESS ;

 scalar_t__ pqisrc_ctrl_offline (struct pqisrc_softstate*) ;
 int pqisrc_passthru_ioctl (struct pqisrc_softstate*,int ,int ) ;
 int pqisrc_scan_devices (struct pqisrc_softstate*) ;
 int smartpqi_get_driver_info_ioctl (int ,struct cdev*) ;
 int smartpqi_get_pci_info_ioctl (int ,struct cdev*) ;

__attribute__((used)) static int smartpqi_ioctl(struct cdev *cdev, u_long cmd, caddr_t udata,
  int flags, struct thread *td)
{
 int error = PQI_STATUS_SUCCESS;
 struct pqisrc_softstate *softs = cdev->si_drv1;

 DBG_FUNC("IN cmd = 0x%lx udata = %p cdev = %p\n", cmd, udata, cdev);

 if (!udata) {
  DBG_ERR("udata is null !!\n");
 }

 if (pqisrc_ctrl_offline(softs)){
  DBG_ERR("Controller s offline !!\n");
  return ENOTTY;
 }

 switch (cmd) {
  case 132:
   smartpqi_get_driver_info_ioctl(udata, cdev);
   break;
  case 131:
   smartpqi_get_pci_info_ioctl(udata, cdev);
   break;
  case 128:
  case 130:
   error = pqisrc_passthru_ioctl(softs, udata, 0);
   error = PQI_STATUS_SUCCESS;
   break;
  case 129:
   error = pqisrc_scan_devices(softs);
   break;
  default:
   DBG_WARN( "!IOCTL cmd 0x%lx not supported", cmd);
   error = ENOTTY;
   break;
 }

 DBG_FUNC("OUT error = %d\n", error);
 return error;
}
