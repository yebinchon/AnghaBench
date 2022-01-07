
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpstr ;
struct mrsas_softc {int mrsas_debug; int mrsas_fw_fault_check_delay; int drv_stream_detection; int lb_pending_cmds; int mrsas_dev; scalar_t__ block_sync_cache; scalar_t__ reset_in_progress; scalar_t__ reset_count; int mrsas_io_timeout; } ;


 int MRSAS_AEN ;
 int MRSAS_FAULT ;
 int MRSAS_INFO ;
 int MRSAS_IO_TIMEOUT ;
 int MRSAS_OCR ;
 int MRSAS_TRACE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int device_get_unit (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
mrsas_get_tunables(struct mrsas_softc *sc)
{
 char tmpstr[80];


 sc->mrsas_debug =
  (MRSAS_FAULT | MRSAS_OCR | MRSAS_INFO | MRSAS_TRACE | MRSAS_AEN);
 sc->mrsas_io_timeout = MRSAS_IO_TIMEOUT;
 sc->mrsas_fw_fault_check_delay = 1;
 sc->reset_count = 0;
 sc->reset_in_progress = 0;
 sc->block_sync_cache = 0;
 sc->drv_stream_detection = 1;




 TUNABLE_INT_FETCH("hw.mrsas.debug_level", &sc->mrsas_debug);




 TUNABLE_INT_FETCH("hw.mrsas.lb_pending_cmds", &sc->lb_pending_cmds);


 snprintf(tmpstr, sizeof(tmpstr), "dev.mrsas.%d.debug_level",
     device_get_unit(sc->mrsas_dev));
 TUNABLE_INT_FETCH(tmpstr, &sc->mrsas_debug);
}
