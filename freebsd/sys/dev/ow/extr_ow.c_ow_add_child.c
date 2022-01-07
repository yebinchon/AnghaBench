
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_devinfo {int romid; } ;
typedef int romid_t ;
typedef int * device_t ;


 int ENOMEM ;
 int M_OW ;
 int M_WAITOK ;
 int * device_add_child (int *,int *,int) ;
 int device_set_ivars (int *,struct ow_devinfo*) ;
 int free (struct ow_devinfo*,int ) ;
 struct ow_devinfo* malloc (int,int ,int ) ;

__attribute__((used)) static int
ow_add_child(device_t dev, romid_t romid)
{
 struct ow_devinfo *di;
 device_t child;

 di = malloc(sizeof(*di), M_OW, M_WAITOK);
 di->romid = romid;
 child = device_add_child(dev, ((void*)0), -1);
 if (child == ((void*)0)) {
  free(di, M_OW);
  return ENOMEM;
 }
 device_set_ivars(child, di);
 return (0);
}
