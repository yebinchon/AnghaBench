
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ NPORT ;
 int SYS_RES_IOPORT ;
 scalar_t__ bus_get_resource (int ,int ,int ,scalar_t__*,scalar_t__*) ;
 int ct_is_free_res (int ,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int ct_probe_board (scalar_t__,int,int) ;
 int device_get_desc (int ) ;
 int device_get_unit (int ) ;
 int printf (char*,int,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int ct_probe (device_t dev)
{
 int unit = device_get_unit (dev);
 rman_res_t iobase, rescount;

 if (!device_get_desc (dev) ||
     strcmp (device_get_desc (dev), "Cronyx Tau-ISA"))
  return ENXIO;


 if (bus_get_resource (dev, SYS_RES_IOPORT, 0, &iobase, &rescount) != 0) {
  printf ("ct%d: Couldn't get IOPORT\n", unit);
  return ENXIO;
 }

 if (!ct_is_free_res (dev, 0, SYS_RES_IOPORT,
     iobase, iobase + NPORT, NPORT)) {
  printf ("ct%d: Resource IOPORT isn't free\n", unit);
  return ENXIO;
 }

 if (!ct_probe_board (iobase, -1, -1)) {
  printf ("ct%d: probing for Tau-ISA at %jx faild\n", unit, iobase);
  return ENXIO;
 }

 return 0;
}
