
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int vpd_size; int vpd_data; int enp; int dev; } ;
struct TYPE_3__ {int evv_tag; int evv_keyword; } ;
typedef TYPE_1__ efx_vpd_value_t ;
typedef int efx_vpd_tag_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int EFX_VPD_KEYWORD (char const,char const) ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char const*,int,struct sfxge_softc*,int,int ,char*,char*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 scalar_t__ efx_vpd_get (int ,int ,int ,TYPE_1__*) ;
 int sfxge_vpd_handler ;

__attribute__((used)) static void
sfxge_vpd_try_add(struct sfxge_softc *sc, struct sysctl_oid_list *list,
    efx_vpd_tag_t tag, const char *keyword)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 efx_vpd_value_t value;


 value.evv_tag = tag;
 value.evv_keyword = EFX_VPD_KEYWORD(keyword[0], keyword[1]);
 if (efx_vpd_get(sc->enp, sc->vpd_data, sc->vpd_size, &value) != 0)
  return;

 SYSCTL_ADD_PROC(
  ctx, list, OID_AUTO, keyword, CTLTYPE_STRING|CTLFLAG_RD,
  sc, tag << 16 | EFX_VPD_KEYWORD(keyword[0], keyword[1]),
  sfxge_vpd_handler, "A", "");
}
