
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pwmbus_ivars {int dummy; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_set_ivars (int *,struct pwmbus_ivars*) ;
 struct pwmbus_ivars* malloc (int,int ,int) ;

__attribute__((used)) static device_t
pwmbus_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t child;
 struct pwmbus_ivars *ivars;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (child);

 ivars = malloc(sizeof(struct pwmbus_ivars), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (ivars == ((void*)0)) {
  device_delete_child(dev, child);
  return (((void*)0));
 }
 device_set_ivars(child, ivars);

 return (child);
}
