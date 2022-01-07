
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int dummy; } ;
struct tw_cl_ctlr_handle {struct twa_softc* osl_ctlr_ctxt; } ;
typedef int TW_VOID ;
typedef int TW_INT32 ;


 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,int ) ;
 int tw_osli_request_bus_scan (struct twa_softc*) ;

TW_VOID
tw_osl_scan_bus(struct tw_cl_ctlr_handle *ctlr_handle)
{
 struct twa_softc *sc = ctlr_handle->osl_ctlr_ctxt;
 TW_INT32 error;

 if ((error = tw_osli_request_bus_scan(sc)))
  tw_osli_printf(sc, "error = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x2109,
   "Bus scan request to CAM failed",
   error);
}
