
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; TYPE_2__* geom; } ;
typedef int off_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int provider; } ;
struct TYPE_4__ {int sectorsize; int mediasize; } ;


 int G_LABEL_DEBUG (int,char*,int ) ;
 int G_SLICE_CONFIG_FORCE ;
 TYPE_3__* LIST_FIRST (int *) ;
 int g_slice_config (TYPE_2__*,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static void
g_label_resize(struct g_consumer *cp)
{

 G_LABEL_DEBUG(1, "Label %s resized.",
     LIST_FIRST(&cp->geom->provider)->name);

 g_slice_config(cp->geom, 0, G_SLICE_CONFIG_FORCE, (off_t)0,
     cp->provider->mediasize, cp->provider->sectorsize, "notused");
}
