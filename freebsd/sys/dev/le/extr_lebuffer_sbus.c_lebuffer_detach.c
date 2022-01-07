
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_TEMP ;
 int bus_generic_detach (int ) ;
 int device_delete_child (int ,int ) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int device_get_ivars (int ) ;
 int free (int *,int ) ;
 int lebuffer_destroy_dinfo (int ) ;

__attribute__((used)) static int
lebuffer_detach(device_t dev)
{
 device_t *children;
 int i, nchildren;

 bus_generic_detach(dev);
 if (device_get_children(dev, &children, &nchildren) == 0) {
  for (i = 0; i < nchildren; i++) {
   lebuffer_destroy_dinfo(device_get_ivars(children[i]));
   device_delete_child(dev, children[i]);
  }
  free(children, M_TEMP);
 }
 return (0);
}
