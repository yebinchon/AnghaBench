
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sfxge_softc {int dev; } ;
typedef int efsys_identifier_t ;
typedef int device_t ;


 int LOG_WARNING ;
 int * __sfxge_err ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int log (int ,char*,int ,int ,int ,int ,int ) ;

void
sfxge_err(efsys_identifier_t *arg, unsigned int code, uint32_t dword0,
   uint32_t dword1)
{
 struct sfxge_softc *sc = (struct sfxge_softc *)arg;
 device_t dev = sc->dev;

 log(LOG_WARNING, "[%s%d] FATAL ERROR: %s (0x%08x%08x)",
     device_get_name(dev), device_get_unit(dev),
  __sfxge_err[code], dword1, dword0);
}
