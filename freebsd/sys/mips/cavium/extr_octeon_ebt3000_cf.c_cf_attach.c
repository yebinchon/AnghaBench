
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_priv {int cf_bq; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int ENXIO ;
 int M_WAITOK ;
 int bioq_init (int *) ;
 int cf_attach_geom ;
 int cf_cmd_identify (struct cf_priv*) ;
 TYPE_1__* cvmx_sysinfo_get () ;
 struct cf_priv* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int g_post_event (int ,struct cf_priv*,int ,int *) ;

__attribute__((used)) static int cf_attach (device_t dev)
{
 struct cf_priv *cf_priv;
 int error;

     if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM)
  return (ENXIO);

 cf_priv = device_get_softc(dev);
 cf_priv->dev = dev;

 error = cf_cmd_identify(cf_priv);
 if (error != 0) {
  device_printf(dev, "cf_cmd_identify failed: %d\n", error);
  return (error);
 }

 g_post_event(cf_attach_geom, cf_priv, M_WAITOK, ((void*)0));
 bioq_init(&cf_priv->cf_bq);

        return 0;
}
