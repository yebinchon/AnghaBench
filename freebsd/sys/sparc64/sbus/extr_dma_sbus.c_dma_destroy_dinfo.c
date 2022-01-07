
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_devinfo {int ddi_obdinfo; int ddi_rl; } ;


 int M_DEVBUF ;
 int free (struct dma_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
dma_destroy_dinfo(struct dma_devinfo *dinfo)
{

 resource_list_free(&dinfo->ddi_rl);
 ofw_bus_gen_destroy_devinfo(&dinfo->ddi_obdinfo);
 free(dinfo, M_DEVBUF);
}
