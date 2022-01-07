
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nexus_devinfo {int ndi_obdinfo; int ndi_rl; } ;


 int M_DEVBUF ;
 int free (struct nexus_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
nexus_destroy_dinfo(struct nexus_devinfo *ndi)
{

 resource_list_free(&ndi->ndi_rl);
 ofw_bus_gen_destroy_devinfo(&ndi->ndi_obdinfo);
 free(ndi, M_DEVBUF);
}
