
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sfxge_softc {int vpd_size; int vpd_data; int enp; } ;
struct TYPE_8__ {int op; int len; int payload; int keyword; int tag; } ;
struct TYPE_9__ {TYPE_1__ vpd; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef TYPE_3__ sfxge_ioc_t ;
struct TYPE_11__ {int evv_length; int evv_value; int evv_keyword; int evv_tag; } ;
typedef TYPE_4__ efx_vpd_value_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MIN (int,int) ;


 int copyin (int ,int ,int) ;
 int copyout (int ,int ,int) ;
 int efx_vpd_get (int ,int ,int ,TYPE_4__*) ;
 int efx_vpd_set (int ,int ,int ,TYPE_4__*) ;
 int efx_vpd_verify (int ,int ,int ) ;
 int efx_vpd_write (int ,int ,int ) ;

__attribute__((used)) static int
sfxge_vpd_ioctl(struct sfxge_softc *sc, sfxge_ioc_t *ioc)
{
 efx_vpd_value_t value;
 int rc = 0;

 switch (ioc->u.vpd.op) {
 case 129:
  value.evv_tag = ioc->u.vpd.tag;
  value.evv_keyword = ioc->u.vpd.keyword;
  rc = efx_vpd_get(sc->enp, sc->vpd_data, sc->vpd_size, &value);
  if (rc != 0)
   break;
  ioc->u.vpd.len = MIN(ioc->u.vpd.len, value.evv_length);
  if (ioc->u.vpd.payload != 0) {
   rc = copyout(value.evv_value, ioc->u.vpd.payload,
         ioc->u.vpd.len);
  }
  break;
 case 128:
  if (ioc->u.vpd.len > sizeof(value.evv_value))
   return (EINVAL);
  value.evv_tag = ioc->u.vpd.tag;
  value.evv_keyword = ioc->u.vpd.keyword;
  value.evv_length = ioc->u.vpd.len;
  rc = copyin(ioc->u.vpd.payload, value.evv_value, value.evv_length);
  if (rc != 0)
   break;
  rc = efx_vpd_set(sc->enp, sc->vpd_data, sc->vpd_size, &value);
  if (rc != 0)
   break;
  rc = efx_vpd_verify(sc->enp, sc->vpd_data, sc->vpd_size);
  if (rc != 0)
   break;
  rc = efx_vpd_write(sc->enp, sc->vpd_data, sc->vpd_size);
  break;
 default:
  rc = EOPNOTSUPP;
  break;
 }

 return (rc);
}
