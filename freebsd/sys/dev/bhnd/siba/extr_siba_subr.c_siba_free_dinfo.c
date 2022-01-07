
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {int mapped; int irq; } ;
struct TYPE_3__ {scalar_t__ intr_en; } ;
struct siba_devinfo {int* cfg_rid; TYPE_2__ intr; TYPE_1__ core_id; int ** cfg_res; int cfg; int resources; } ;
typedef int device_t ;


 int BHND_BUS_UNMAP_INTR (int ,int ,int ) ;
 int M_BHND ;
 int SYS_RES_MEMORY ;
 int bhnd_release_resource (int ,int ,int,int *) ;
 int free (struct siba_devinfo*,int ) ;
 size_t nitems (int ) ;
 int resource_list_free (int *) ;

void
siba_free_dinfo(device_t dev, device_t child, struct siba_devinfo *dinfo)
{
 resource_list_free(&dinfo->resources);


 for (u_int i = 0; i < nitems(dinfo->cfg); i++) {
  if (dinfo->cfg_res[i] == ((void*)0))
   continue;

  bhnd_release_resource(dev, SYS_RES_MEMORY, dinfo->cfg_rid[i],
      dinfo->cfg_res[i]);

  dinfo->cfg_res[i] = ((void*)0);
  dinfo->cfg_rid[i] = -1;
 }


 if (dinfo->core_id.intr_en && dinfo->intr.mapped) {
  BHND_BUS_UNMAP_INTR(dev, child, dinfo->intr.irq);
  dinfo->intr.mapped = 0;
 }

 free(dinfo, M_BHND);
}
