
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pmask; scalar_t__ nvi; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_6__ {scalar_t__ portvec; TYPE_2__ vfres; TYPE_1__ rss; } ;
struct adapter {TYPE_3__ params; int dev; } ;


 int EINVAL ;
 int FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ;
 int device_printf (int ,char*,...) ;
 int t4_read_chip_settings (struct adapter*) ;
 int t4vf_get_rss_glb_config (struct adapter*) ;
 int t4vf_get_sge_params (struct adapter*) ;
 int t4vf_get_vfres (struct adapter*) ;

__attribute__((used)) static int
get_params__post_init(struct adapter *sc)
{
 int rc;

 rc = -t4vf_get_sge_params(sc);
 if (rc != 0) {
  device_printf(sc->dev,
      "unable to retrieve adapter SGE parameters: %d\n", rc);
  return (rc);
 }

 rc = -t4vf_get_rss_glb_config(sc);
 if (rc != 0) {
  device_printf(sc->dev,
      "unable to retrieve adapter RSS parameters: %d\n", rc);
  return (rc);
 }
 if (sc->params.rss.mode != FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL) {
  device_printf(sc->dev,
      "unable to operate with global RSS mode %d\n",
      sc->params.rss.mode);
  return (EINVAL);
 }

 rc = t4_read_chip_settings(sc);
 if (rc != 0)
  return (rc);






 rc = -t4vf_get_vfres(sc);
 if (rc != 0) {
  device_printf(sc->dev,
      "unable to get virtual interface resources: %d\n", rc);
  return (rc);
 }




 if (sc->params.vfres.pmask == 0) {
  device_printf(sc->dev, "no port access configured/usable!\n");
  return (EINVAL);
 }
 if (sc->params.vfres.nvi == 0) {
  device_printf(sc->dev,
      "no virtual interfaces configured/usable!\n");
  return (EINVAL);
 }
 sc->params.portvec = sc->params.vfres.pmask;

 return (0);
}
