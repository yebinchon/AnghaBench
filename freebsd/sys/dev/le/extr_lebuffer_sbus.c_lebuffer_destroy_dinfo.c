
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lebuffer_devinfo {int ldi_obdinfo; int ldi_rl; } ;


 int M_DEVBUF ;
 int free (struct lebuffer_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
lebuffer_destroy_dinfo(struct lebuffer_devinfo *dinfo)
{

 resource_list_free(&dinfo->ldi_rl);
 ofw_bus_gen_destroy_devinfo(&dinfo->ldi_obdinfo);
 free(dinfo, M_DEVBUF);
}
