
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct twa_softc {int ctlr_handle; } ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef scalar_t__ caddr_t ;
typedef int TW_INT8 ;
typedef int TW_INT32 ;




 int tw_cl_ioctl (int *,int,scalar_t__) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*,...) ;
 int tw_osli_fw_passthru (struct twa_softc*,int *) ;
 int tw_osli_request_bus_scan (struct twa_softc*) ;

__attribute__((used)) static TW_INT32
twa_ioctl(struct cdev *dev, u_long cmd, caddr_t buf, TW_INT32 flags, struct thread *proc)
{
 struct twa_softc *sc = (struct twa_softc *)(dev->si_drv1);
 TW_INT32 error;

 tw_osli_dbg_dprintf(5, sc, "entered");

 switch (cmd) {
 case 129:
  tw_osli_dbg_dprintf(6, sc, "ioctl: fw_passthru");
  error = tw_osli_fw_passthru(sc, (TW_INT8 *)buf);
  break;

 case 128:

  tw_osli_dbg_dprintf(6, sc, "ioctl: scan bus");
  error = tw_osli_request_bus_scan(sc);
  break;

 default:
  tw_osli_dbg_dprintf(6, sc, "ioctl: 0x%lx", cmd);
  error = tw_cl_ioctl(&sc->ctlr_handle, cmd, buf);
  break;
 }
 return(error);
}
