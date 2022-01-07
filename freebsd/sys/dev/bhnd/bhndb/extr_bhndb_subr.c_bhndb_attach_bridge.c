
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int ENXIO ;
 int * device_add_child (int *,char*,int) ;
 scalar_t__ device_delete_child (int *,int *) ;
 int device_printf (int *,char*) ;
 int device_probe_and_attach (int *) ;

int
bhndb_attach_bridge(device_t parent, device_t *bhndb, int unit)
{
 int error;

 *bhndb = device_add_child(parent, "bhndb", unit);
 if (*bhndb == ((void*)0))
  return (ENXIO);

 if (!(error = device_probe_and_attach(*bhndb)))
  return (0);

 if ((device_delete_child(parent, *bhndb)))
  device_printf(parent, "failed to detach bhndb child\n");

 return (error);
}
