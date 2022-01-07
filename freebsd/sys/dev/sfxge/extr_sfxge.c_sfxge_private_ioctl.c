
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sfxge_softc {int dummy; } ;
struct TYPE_6__ {int op; } ;
typedef TYPE_1__ sfxge_ioc_t ;


 int EOPNOTSUPP ;



 int sfxge_mcdi_ioctl (struct sfxge_softc*,TYPE_1__*) ;
 int sfxge_nvram_ioctl (struct sfxge_softc*,TYPE_1__*) ;
 int sfxge_vpd_ioctl (struct sfxge_softc*,TYPE_1__*) ;

__attribute__((used)) static int
sfxge_private_ioctl(struct sfxge_softc *sc, sfxge_ioc_t *ioc)
{
 switch (ioc->op) {
 case 130:
  return (sfxge_mcdi_ioctl(sc, ioc));
 case 129:
  return (sfxge_nvram_ioctl(sc, ioc));
 case 128:
  return (sfxge_vpd_ioctl(sc, ioc));
 default:
  return (EOPNOTSUPP);
 }
}
