
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef short rman_res_t ;
typedef int driver_t ;
typedef int * device_t ;
typedef int * devclass_t ;


 int * BUS_ADD_CHILD (int *,int ,char*,int) ;
 int ISA_ORDER_SPECULATIVE ;
 int M_TEMP ;
 int NCX ;
 short NPORT ;
 int SYS_RES_IOPORT ;
 scalar_t__ bus_get_resource (int *,int ,int ,short*,short*) ;
 int bus_set_resource (int *,int ,int ,short,short) ;
 int cx_is_free_res (int *,int ,int ,short,short,short) ;
 scalar_t__ cx_probe_board (short,int,int) ;
 int * devclass_find (char*) ;
 int devclass_get_devices (int *,int ***,int*) ;
 int device_delete_child (int ,int *) ;
 int device_get_parent (int *) ;
 int device_set_desc_copy (int *,char*) ;
 int device_set_driver (int *,int *) ;
 int free (int **,int ) ;
 short* porttab ;

__attribute__((used)) static void cx_identify (driver_t *driver, device_t dev)
{
 rman_res_t iobase, rescount;
 int devcount;
 device_t *devices;
 device_t child;
 devclass_t my_devclass;
 int i, k;

 if ((my_devclass = devclass_find ("cx")) == ((void*)0))
  return;

 devclass_get_devices (my_devclass, &devices, &devcount);

 if (devcount == 0) {



  for (i = 0; (iobase = porttab [i]) != 0; i++) {
   if (!cx_is_free_res (dev, 0, SYS_RES_IOPORT,
       iobase, iobase + NPORT, NPORT))
    continue;
   if (cx_probe_board (iobase, -1, -1) == 0)
    continue;

   devcount++;

   child = BUS_ADD_CHILD (dev, ISA_ORDER_SPECULATIVE, "cx",
       -1);

   if (child == ((void*)0))
    return;

   device_set_desc_copy (child, "Cronyx Sigma");
   device_set_driver (child, driver);
   bus_set_resource (child, SYS_RES_IOPORT, 0,
       iobase, NPORT);

   if (devcount >= NCX)
    break;
  }
 } else {
  static short porttab [] = {
   0x200, 0x220, 0x240, 0x260, 0x280, 0x2a0, 0x2c0, 0x2e0,
   0x300, 0x320, 0x340, 0x360, 0x380, 0x3a0, 0x3c0, 0x3e0, 0
  };


  for (k = 0; k < devcount; k++) {
   if (bus_get_resource (devices[k], SYS_RES_IOPORT, 0,
       &iobase, &rescount) != 0)
    continue;

   for (i = 0; porttab [i] != 0; i++) {
    if (porttab [i] != iobase)
     continue;
    if (!cx_is_free_res (devices[k], 0, SYS_RES_IOPORT,
        iobase, iobase + NPORT, NPORT))
     continue;
    if (cx_probe_board (iobase, -1, -1) == 0)
     continue;
    porttab [i] = -1;
    device_set_desc_copy (devices[k], "Cronyx Sigma");
    break;
   }

   if (porttab [i] == 0) {
    device_delete_child (
        device_get_parent (devices[k]),
        devices [k]);
    devices[k] = 0;
    continue;
   }
  }
  for (k = 0; k < devcount; k++) {
   if (devices[k] == 0)
    continue;
   if (bus_get_resource (devices[k], SYS_RES_IOPORT, 0,
       &iobase, &rescount) == 0)
    continue;
   for (i = 0; (iobase = porttab [i]) != 0; i++) {
    if (porttab [i] == -1) {
     continue;
    }
    if (!cx_is_free_res (devices[k], 0, SYS_RES_IOPORT,
        iobase, iobase + NPORT, NPORT))
     continue;
    if (cx_probe_board (iobase, -1, -1) == 0)
     continue;

    bus_set_resource (devices[k], SYS_RES_IOPORT, 0,
        iobase, NPORT);
    porttab [i] = -1;
    device_set_desc_copy (devices[k], "Cronyx Sigma");
    break;
   }
   if (porttab [i] == 0) {
    device_delete_child (
        device_get_parent (devices[k]),
        devices [k]);
   }
  }
  free (devices, M_TEMP);
 }

 return;
}
