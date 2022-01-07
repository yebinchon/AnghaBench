
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {int dummy; } ;
typedef int driver_t ;
typedef int device_t ;


 int * BUS_ADD_CHILD (int ,int,char*,int) ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 struct ofw_compat_data* mpc85xx_jog_devcompat () ;

__attribute__((used)) static void
mpc85xx_jog_identify(driver_t *driver, device_t parent)
{
 struct ofw_compat_data *compat;


 if (device_find_child(parent, "mpc85xx_jog", -1) != ((void*)0))
  return;

 compat = mpc85xx_jog_devcompat();
 if (compat == ((void*)0))
  return;





 if (BUS_ADD_CHILD(parent, 10, "jog", -1) == ((void*)0))
  device_printf(parent, "add jog child failed\n");
}
