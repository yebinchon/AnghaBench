
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upa_devinfo {int udi_obdinfo; int udi_rl; } ;


 int M_DEVBUF ;
 int free (struct upa_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
upa_destroy_dinfo(struct upa_devinfo *dinfo)
{

 resource_list_free(&dinfo->udi_rl);
 ofw_bus_gen_destroy_devinfo(&dinfo->udi_obdinfo);
 free(dinfo, M_DEVBUF);
}
