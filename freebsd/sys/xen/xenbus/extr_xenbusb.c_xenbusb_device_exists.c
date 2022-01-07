
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_ivars {int xd_node; } ;
typedef int * device_t ;


 int * FALSE ;
 int M_TEMP ;
 scalar_t__ device_get_children (int *,int ***,int*) ;
 struct xenbus_device_ivars* device_get_ivars (int *) ;
 int free (int **,int ) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static device_t
xenbusb_device_exists(device_t dev, const char *node)
{
 device_t *kids;
 device_t result;
 struct xenbus_device_ivars *ivars;
 int i, count;

 if (device_get_children(dev, &kids, &count))
  return (FALSE);

 result = ((void*)0);
 for (i = 0; i < count; i++) {
  ivars = device_get_ivars(kids[i]);
  if (!strcmp(ivars->xd_node, node)) {
   result = kids[i];
   break;
  }
 }
 free(kids, M_TEMP);

 return (result);
}
