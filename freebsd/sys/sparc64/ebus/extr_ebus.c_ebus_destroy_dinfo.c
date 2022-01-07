
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebus_devinfo {int edi_obdinfo; int edi_rl; } ;


 int M_DEVBUF ;
 int free (struct ebus_devinfo*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
ebus_destroy_dinfo(struct ebus_devinfo *edi)
{

 resource_list_free(&edi->edi_rl);
 ofw_bus_gen_destroy_devinfo(&edi->edi_obdinfo);
 free(edi, M_DEVBUF);
}
