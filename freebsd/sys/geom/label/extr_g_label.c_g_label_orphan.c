
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_consumer {TYPE_1__* geom; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int provider; } ;


 int G_LABEL_DEBUG (int,char*,int ) ;
 TYPE_2__* LIST_FIRST (int *) ;
 int g_slice_orphan (struct g_consumer*) ;

__attribute__((used)) static void
g_label_orphan(struct g_consumer *cp)
{

 G_LABEL_DEBUG(1, "Label %s removed.",
     LIST_FIRST(&cp->geom->provider)->name);
 g_slice_orphan(cp);
}
