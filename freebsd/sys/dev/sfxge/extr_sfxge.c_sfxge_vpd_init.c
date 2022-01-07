
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_softc {int vpd_data; int dev; int vpd_size; int enp; } ;
struct TYPE_3__ {size_t evv_length; scalar_t__* evv_value; int evv_tag; } ;
typedef TYPE_1__ efx_vpd_value_t ;


 int CTLFLAG_RD ;
 int EACCES ;
 int EFX_VPD_ID ;
 int EFX_VPD_RO ;
 int M_SFXGE ;
 int M_WAITOK ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,scalar_t__*) ;
 int device_set_desc_copy (int ,scalar_t__*) ;
 scalar_t__ efx_vpd_get (int ,int ,int ,TYPE_1__*) ;
 int efx_vpd_read (int ,int ,int ) ;
 int efx_vpd_size (int ,int *) ;
 int free (int ,int ) ;
 int malloc (int ,int ,int ) ;
 int sfxge_vpd_try_add (struct sfxge_softc*,struct sysctl_oid_list*,int ,char*) ;

__attribute__((used)) static int
sfxge_vpd_init(struct sfxge_softc *sc)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid *vpd_node;
 struct sysctl_oid_list *vpd_list;
 char keyword[3];
 efx_vpd_value_t value;
 int rc;

 if ((rc = efx_vpd_size(sc->enp, &sc->vpd_size)) != 0) {




  if (rc == EACCES)
   goto done;
  goto fail;
 }
 sc->vpd_data = malloc(sc->vpd_size, M_SFXGE, M_WAITOK);
 if ((rc = efx_vpd_read(sc->enp, sc->vpd_data, sc->vpd_size)) != 0)
  goto fail2;


 value.evv_tag = EFX_VPD_ID;
 if (efx_vpd_get(sc->enp, sc->vpd_data, sc->vpd_size, &value) == 0) {
  value.evv_value[value.evv_length] = 0;
  device_set_desc_copy(sc->dev, value.evv_value);
  device_printf(sc->dev, "%s\n", value.evv_value);
 }

 vpd_node = SYSCTL_ADD_NODE(
  ctx, SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
  OID_AUTO, "vpd", CTLFLAG_RD, ((void*)0), "Vital Product Data");
 vpd_list = SYSCTL_CHILDREN(vpd_node);


 sfxge_vpd_try_add(sc, vpd_list, EFX_VPD_RO, "PN");
 sfxge_vpd_try_add(sc, vpd_list, EFX_VPD_RO, "EC");
 sfxge_vpd_try_add(sc, vpd_list, EFX_VPD_RO, "SN");
 keyword[0] = 'V';
 keyword[2] = 0;
 for (keyword[1] = '0'; keyword[1] <= '9'; keyword[1]++)
  sfxge_vpd_try_add(sc, vpd_list, EFX_VPD_RO, keyword);
 for (keyword[1] = 'A'; keyword[1] <= 'Z'; keyword[1]++)
  sfxge_vpd_try_add(sc, vpd_list, EFX_VPD_RO, keyword);

done:
 return (0);

fail2:
 free(sc->vpd_data, M_SFXGE);
fail:
 return (rc);
}
