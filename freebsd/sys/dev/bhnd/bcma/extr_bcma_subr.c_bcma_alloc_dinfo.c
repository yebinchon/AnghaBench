
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_devinfo {int rid_agent; int resources; scalar_t__ num_intrs; int intrs; int * res_agent; int * corecfg; } ;
typedef int device_t ;


 int M_BHND ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 struct bcma_devinfo* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

struct bcma_devinfo *
bcma_alloc_dinfo(device_t bus)
{
 struct bcma_devinfo *dinfo;

 dinfo = malloc(sizeof(struct bcma_devinfo), M_BHND, M_NOWAIT|M_ZERO);
 if (dinfo == ((void*)0))
  return (((void*)0));

 dinfo->corecfg = ((void*)0);
 dinfo->res_agent = ((void*)0);
 dinfo->rid_agent = -1;

 STAILQ_INIT(&dinfo->intrs);
 dinfo->num_intrs = 0;

 resource_list_init(&dinfo->resources);

 return (dinfo);
}
