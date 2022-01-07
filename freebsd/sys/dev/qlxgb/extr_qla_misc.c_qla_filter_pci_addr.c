
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q8_INVALID_ADDRESS ;

__attribute__((used)) static uint32_t
qla_filter_pci_addr(qla_host_t *ha, uint32_t addr)
{
 if ((addr == Q8_INVALID_ADDRESS) ||
  (addr == 0x00112040) ||
  (addr == 0x00112048) ||
  ((addr & 0xFFFF0FFF) == 0x001100C4) ||
  ((addr & 0xFFFF0FFF) == 0x001100C8) ||
  ((addr & 0x0FF00000) == 0x00200000) ||
  (addr == 0x022021FC) ||
  (addr == 0x0330001C) ||
  (addr == 0x03300024) ||
  (addr == 0x033000A8) ||
  (addr == 0x033000C8) ||
  (addr == 0x033000BC) ||
  ((addr & 0x0FF00000) == 0x03A00000) ||
  (addr == 0x03B0001C))
  return (Q8_INVALID_ADDRESS);
 else
  return (addr);
}
