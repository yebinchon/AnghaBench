
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbus_devinfo {int sdi_obdinfo; int sdi_rl; } ;


 int M_DEVBUF ;
 int free (struct sbus_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
sbus_destroy_dinfo(struct sbus_devinfo *dinfo)
{

 resource_list_free(&dinfo->sdi_rl);
 ofw_bus_gen_destroy_devinfo(&dinfo->sdi_obdinfo);
 free(dinfo, M_DEVBUF);
}
