
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rman_res_t ;
typedef int device_t ;


 int ENXIO ;
 int NPORT ;
 int SYS_RES_IOPORT ;
 scalar_t__ bus_get_resource (int ,int ,int ,int*,int*) ;
 int cx_is_free_res (int ,int ,int ,int,int,int) ;
 int cx_probe_board (int,int,int) ;
 int device_get_desc (int ) ;
 int device_get_unit (int ) ;
 int* porttab ;
 int printf (char*,int,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int cx_probe (device_t dev)
{
 int unit = device_get_unit (dev);
 int i;
 rman_res_t iobase, rescount;

 if (!device_get_desc (dev) ||
     strcmp (device_get_desc (dev), "Cronyx Sigma"))
  return ENXIO;

 if (bus_get_resource (dev, SYS_RES_IOPORT, 0, &iobase, &rescount) != 0) {
  printf ("cx%d: Couldn't get IOPORT\n", unit);
  return ENXIO;
 }

 if (!cx_is_free_res (dev, 0, SYS_RES_IOPORT,
     iobase, iobase + NPORT, NPORT)) {
  printf ("cx%d: Resource IOPORT isn't free %lx\n", unit, iobase);
  return ENXIO;
 }

 for (i = 0; porttab [i] != 0; i++) {
  if (porttab [i] == iobase) {
   porttab [i] = -1;
   break;
  }
 }

 if (porttab [i] == 0) {
  return ENXIO;
 }

 if (!cx_probe_board (iobase, -1, -1)) {
  printf ("cx%d: probing for Sigma at %lx faild\n", unit, iobase);
  return ENXIO;
 }

 return 0;
}
