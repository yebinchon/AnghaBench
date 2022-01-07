
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vpd_readstate {int bytesinval; int off; int val; int cksum; int cfg; int pcib; } ;


 int ENXIO ;
 int le32toh (int ) ;
 scalar_t__ pci_read_vpd_reg (int ,int ,int,int *) ;

__attribute__((used)) static int
vpd_nextbyte(struct vpd_readstate *vrs, uint8_t *data)
{
 uint32_t reg;
 uint8_t byte;

 if (vrs->bytesinval == 0) {
  if (pci_read_vpd_reg(vrs->pcib, vrs->cfg, vrs->off, &reg))
   return (ENXIO);
  vrs->val = le32toh(reg);
  vrs->off += 4;
  byte = vrs->val & 0xff;
  vrs->bytesinval = 3;
 } else {
  vrs->val = vrs->val >> 8;
  byte = vrs->val & 0xff;
  vrs->bytesinval--;
 }

 vrs->cksum += byte;
 *data = byte;
 return (0);
}
