
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct m32xreg {int dummy; } ;
struct f54wreg {int dummy; } ;
struct f54rreg {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc_copy (int ,char*) ;
 int pci_get_devid (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
mn_probe (device_t self)
{
 u_int id = pci_get_devid(self);

 if (sizeof (struct m32xreg) != 256) {
  printf("MN: sizeof(struct m32xreg) = %zd, should have been 256\n", sizeof (struct m32xreg));
  return (ENXIO);
 }
 if (sizeof (struct f54rreg) != 128) {
  printf("MN: sizeof(struct f54rreg) = %zd, should have been 128\n", sizeof (struct f54rreg));
  return (ENXIO);
 }
 if (sizeof (struct f54wreg) != 128) {
  printf("MN: sizeof(struct f54wreg) = %zd, should have been 128\n", sizeof (struct f54wreg));
  return (ENXIO);
 }

 if (id != 0x2101110a)
  return (ENXIO);

 device_set_desc_copy(self, "Munich32X E1/T1 HDLC Controller");
 return (BUS_PROBE_DEFAULT);
}
