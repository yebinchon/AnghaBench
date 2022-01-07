
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_devinfo {scalar_t__ romid; } ;
typedef scalar_t__ romid_t ;
typedef int * device_t ;


 int M_TEMP ;
 scalar_t__ device_get_children (int *,int ***,int*) ;
 struct ow_devinfo* device_get_ivars (int *) ;
 int free (int **,int ) ;

__attribute__((used)) static device_t
ow_child_by_romid(device_t dev, romid_t romid)
{
 device_t *children, retval, child;
 int nkid, i;
 struct ow_devinfo *di;

 if (device_get_children(dev, &children, &nkid) != 0)
  return (((void*)0));
 retval = ((void*)0);
 for (i = 0; i < nkid; i++) {
  child = children[i];
  di = device_get_ivars(child);
  if (di->romid == romid) {
   retval = child;
   break;
  }
 }
 free(children, M_TEMP);

 return (retval);
}
