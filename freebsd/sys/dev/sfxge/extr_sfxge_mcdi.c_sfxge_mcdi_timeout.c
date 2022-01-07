
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int dev; } ;
typedef int device_t ;


 int EFSYS_PROBE (int ) ;
 int LOG_WARNING ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int log (int ,char*,int ,int ) ;
 int mcdi_timeout ;
 int sfxge_schedule_reset (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_mcdi_timeout(struct sfxge_softc *sc)
{
 device_t dev = sc->dev;

 log(LOG_WARNING, "[%s%d] MC_TIMEOUT", device_get_name(dev),
  device_get_unit(dev));

 EFSYS_PROBE(mcdi_timeout);
 sfxge_schedule_reset(sc);
}
