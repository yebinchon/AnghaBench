
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int obd_node; } ;
struct ofw_pwmbus_ivars {TYPE_1__ devinfo; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct ofw_pwmbus_ivars*) ;
 int free (struct ofw_pwmbus_ivars*,int ) ;
 struct ofw_pwmbus_ivars* malloc (int,int ,int) ;

__attribute__((used)) static device_t
ofw_pwmbus_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t child;
 struct ofw_pwmbus_ivars *ivars;

 if ((ivars = malloc(sizeof(struct ofw_pwmbus_ivars), M_DEVBUF,
     M_NOWAIT | M_ZERO)) == ((void*)0)) {
  return (((void*)0));
 }

 if ((child = device_add_child_ordered(dev, order, name, unit)) == ((void*)0)) {
  free(ivars, M_DEVBUF);
  return (((void*)0));
 }

 ivars->devinfo.obd_node = -1;
 device_set_ivars(child, ivars);

 return (child);
}
