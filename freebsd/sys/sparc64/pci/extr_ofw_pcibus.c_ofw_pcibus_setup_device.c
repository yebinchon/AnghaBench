
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int CS_READ (int,int) ;
 int CS_WRITE (int,int,int) ;
 int OFW_PCI_LATENCY ;
 int PCIB_BCR_MASTER_ABORT_MODE ;
 int PCIB_BCR_PERR_ENABLE ;
 int PCIB_BCR_SERR_ENABLE ;
 int PCIM_HDRTYPE ;
 int PCIM_HDRTYPE_BRIDGE ;
 int PCIR_BRIDGECTL_1 ;
 int PCIR_CACHELNSZ ;
 int PCIR_DEVICE ;
 int PCIR_HDRTYPE ;
 int PCIR_INTLINE ;
 int PCIR_LATTIMER ;
 int PCIR_MINGNT ;
 int PCIR_SECLAT_1 ;
 int PCIR_VENDOR ;
 int PCI_INVALID_IRQ ;
 int STRBUF_LINESZ ;
 int device_printf (int ,char*,int ,int ,int ,int,int) ;
 int min (int,int) ;

__attribute__((used)) static void
ofw_pcibus_setup_device(device_t bridge, uint32_t clock, u_int busno,
    u_int slot, u_int func)
{






 uint32_t reg;
 if ((PCIB_READ_CONFIG(bridge, busno, slot, func, (PCIR_HDRTYPE), (1)) & PCIM_HDRTYPE) ==
     PCIM_HDRTYPE_BRIDGE) {
  reg = PCIB_READ_CONFIG(bridge, busno, slot, func, (PCIR_BRIDGECTL_1), (1));
  reg |= PCIB_BCR_MASTER_ABORT_MODE | PCIB_BCR_SERR_ENABLE |
      PCIB_BCR_PERR_ENABLE;





  PCIB_WRITE_CONFIG(bridge, busno, slot, func, (PCIR_BRIDGECTL_1), (reg), (1));

  reg = OFW_PCI_LATENCY;





  PCIB_WRITE_CONFIG(bridge, busno, slot, func, (PCIR_SECLAT_1), (reg), (1));
 } else {
  reg = PCIB_READ_CONFIG(bridge, busno, slot, func, (PCIR_MINGNT), (1));
  if ((int)reg > 0) {
   switch (clock) {
   case 33000000:
    reg *= 8;
    break;
   case 66000000:
    reg *= 4;
    break;
   }
   reg = min(reg, 255);
  } else
   reg = OFW_PCI_LATENCY;
 }




 PCIB_WRITE_CONFIG(bridge, busno, slot, func, (PCIR_LATTIMER), (reg), (1));
 PCIB_WRITE_CONFIG(bridge, busno, slot, func, (PCIR_CACHELNSZ), (STRBUF_LINESZ / sizeof(uint32_t)), (1));
 if ((PCIB_READ_CONFIG(bridge, busno, slot, func, (PCIR_VENDOR), (2)) == 0x10b9 &&
     PCIB_READ_CONFIG(bridge, busno, slot, func, (PCIR_DEVICE), (2)) == 0x5229))
  PCIB_WRITE_CONFIG(bridge, busno, slot, func, (0x50), (PCIB_READ_CONFIG(bridge, busno, slot, func, (0x50), (1)) | 0x3), (1));






 PCIB_WRITE_CONFIG(bridge, busno, slot, func, (PCIR_INTLINE), (PCI_INVALID_IRQ), (1));



}
