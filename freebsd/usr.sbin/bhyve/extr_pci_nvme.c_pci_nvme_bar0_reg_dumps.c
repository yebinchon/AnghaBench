
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DPRINTF (char*) ;
__attribute__((used)) static void
pci_nvme_bar0_reg_dumps(const char *func, uint64_t offset, int iswrite)
{
 const char *s = iswrite ? "WRITE" : "READ";

 switch (offset) {
 case 134:
  DPRINTF(("%s %s NVME_CR_CAP_LOW\r\n", func, s));
  break;
 case 135:
  DPRINTF(("%s %s NVME_CR_CAP_HI\r\n", func, s));
  break;
 case 128:
  DPRINTF(("%s %s NVME_CR_VS\r\n", func, s));
  break;
 case 130:
  DPRINTF(("%s %s NVME_CR_INTMS\r\n", func, s));
  break;
 case 131:
  DPRINTF(("%s %s NVME_CR_INTMC\r\n", func, s));
  break;
 case 133:
  DPRINTF(("%s %s NVME_CR_CC\r\n", func, s));
  break;
 case 132:
  DPRINTF(("%s %s NVME_CR_CSTS\r\n", func, s));
  break;
 case 129:
  DPRINTF(("%s %s NVME_CR_NSSR\r\n", func, s));
  break;
 case 138:
  DPRINTF(("%s %s NVME_CR_AQA\r\n", func, s));
  break;
 case 136:
  DPRINTF(("%s %s NVME_CR_ASQ_LOW\r\n", func, s));
  break;
 case 137:
  DPRINTF(("%s %s NVME_CR_ASQ_HI\r\n", func, s));
  break;
 case 139:
  DPRINTF(("%s %s NVME_CR_ACQ_LOW\r\n", func, s));
  break;
 case 140:
  DPRINTF(("%s %s NVME_CR_ACQ_HI\r\n", func, s));
  break;
 default:
  DPRINTF(("unknown nvme bar-0 offset 0x%lx\r\n", offset));
 }

}
