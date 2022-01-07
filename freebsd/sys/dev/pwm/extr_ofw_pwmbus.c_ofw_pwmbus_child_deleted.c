
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pwmbus_ivars {int devinfo; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct ofw_pwmbus_ivars* device_get_ivars (int ) ;
 int free (struct ofw_pwmbus_ivars*,int ) ;
 int ofw_bus_gen_destroy_devinfo (int *) ;

__attribute__((used)) static void
ofw_pwmbus_child_deleted(device_t dev, device_t child)
{
 struct ofw_pwmbus_ivars *ivars;

 ivars = device_get_ivars(child);
 if (ivars != ((void*)0)) {
  ofw_bus_gen_destroy_devinfo(&ivars->devinfo);
  free(ivars, M_DEVBUF);
 }
}
