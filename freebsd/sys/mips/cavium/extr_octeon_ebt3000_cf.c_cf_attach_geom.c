
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sector_size; int nr_sectors; } ;
struct cf_priv {TYPE_2__* cf_provider; TYPE_1__ drive_param; TYPE_3__* cf_geom; int dev; } ;
struct TYPE_8__ {int name; struct cf_priv* softc; } ;
struct TYPE_7__ {int sectorsize; int mediasize; } ;


 int device_get_unit (int ) ;
 int g_cf_class ;
 int g_error_provider (TYPE_2__*,int ) ;
 TYPE_3__* g_new_geomf (int *,char*,int ) ;
 TYPE_2__* g_new_providerf (TYPE_3__*,char*,int ) ;

__attribute__((used)) static void cf_attach_geom (void *arg, int flag)
{
 struct cf_priv *cf_priv;

 cf_priv = (struct cf_priv *) arg;
 cf_priv->cf_geom = g_new_geomf(&g_cf_class, "cf%d", device_get_unit(cf_priv->dev));
 cf_priv->cf_geom->softc = cf_priv;
 cf_priv->cf_provider = g_new_providerf(cf_priv->cf_geom, "%s",
     cf_priv->cf_geom->name);
 cf_priv->cf_provider->sectorsize = cf_priv->drive_param.sector_size;
 cf_priv->cf_provider->mediasize = cf_priv->drive_param.nr_sectors * cf_priv->cf_provider->sectorsize;
        g_error_provider(cf_priv->cf_provider, 0);
}
