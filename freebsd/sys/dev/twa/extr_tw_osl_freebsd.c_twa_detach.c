
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {scalar_t__ open; } ;
typedef int device_t ;
typedef scalar_t__ TW_INT32 ;


 scalar_t__ EBUSY ;
 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 struct twa_softc* device_get_softc (int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_free_resources (struct twa_softc*) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,scalar_t__) ;
 scalar_t__ twa_shutdown (int ) ;

__attribute__((used)) static TW_INT32
twa_detach(device_t dev)
{
 struct twa_softc *sc = device_get_softc(dev);
 TW_INT32 error;

 tw_osli_dbg_dprintf(3, sc, "entered");

 error = EBUSY;
 if (sc->open) {
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2014,
   "Device open",
   error);
  goto out;
 }


 if ((error = twa_shutdown(dev)))
  goto out;


 tw_osli_free_resources(sc);
 error = 0;

out:
 return(error);
}
