
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int ctlr_handle; int * watchdog_callout; } ;
typedef int device_t ;
typedef int TW_INT32 ;


 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int callout_drain (int *) ;
 struct twa_softc* device_get_softc (int ) ;
 int tw_cl_shutdown_ctlr (int *,int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,int ) ;
 int twa_teardown_intr (struct twa_softc*) ;

__attribute__((used)) static TW_INT32
twa_shutdown(device_t dev)
{
 struct twa_softc *sc = device_get_softc(dev);
 TW_INT32 error = 0;

 tw_osli_dbg_dprintf(3, sc, "entered");


 error = twa_teardown_intr(sc);


 callout_drain(&(sc->watchdog_callout[0]));
 callout_drain(&(sc->watchdog_callout[1]));


 if ((error = tw_cl_shutdown_ctlr(&(sc->ctlr_handle), 0))) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2015,
   "Failed to shutdown Common Layer/controller",
   error);
 }
 return(error);
}
