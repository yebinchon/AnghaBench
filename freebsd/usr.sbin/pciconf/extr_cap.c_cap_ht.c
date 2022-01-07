
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct pci_conf {int pc_sel; } ;
 int PCIM_HTCAP_HOST ;





 int PCIM_HTCAP_SLAVE ;




 int PCIM_HTCMD_CAP_MASK ;
 int PCIM_HTCMD_MSI_ENABLE ;
 int PCIM_HTCMD_MSI_FIXED ;
 scalar_t__ PCIR_HTMSI_ADDRESS_HI ;
 scalar_t__ PCIR_HTMSI_ADDRESS_LO ;
 scalar_t__ PCIR_HT_COMMAND ;
 int printf (char*,...) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
cap_ht(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint32_t reg;
 uint16_t command;

 command = read_config(fd, &p->pc_sel, ptr + PCIR_HT_COMMAND, 2);
 printf("HT ");
 if ((command & 0xe000) == PCIM_HTCAP_SLAVE)
  printf("slave");
 else if ((command & 0xe000) == PCIM_HTCAP_HOST)
  printf("host");
 else
  switch (command & PCIM_HTCMD_CAP_MASK) {
  case 131:
   printf("switch");
   break;
  case 136:
   printf("interrupt");
   break;
  case 132:
   printf("revision ID");
   break;
  case 130:
   printf("unit ID clumping");
   break;
  case 140:
   printf("extended config space");
   break;
  case 142:
   printf("address mapping");
   break;
  case 135:
   printf("MSI %saddress window %s at 0x",
       command & PCIM_HTCMD_MSI_FIXED ? "fixed " : "",
       command & PCIM_HTCMD_MSI_ENABLE ? "enabled" :
       "disabled");
   if (command & PCIM_HTCMD_MSI_FIXED)
    printf("fee00000");
   else {
    reg = read_config(fd, &p->pc_sel,
        ptr + PCIR_HTMSI_ADDRESS_HI, 4);
    if (reg != 0)
     printf("%08x", reg);
    reg = read_config(fd, &p->pc_sel,
        ptr + PCIR_HTMSI_ADDRESS_LO, 4);
    printf("%08x", reg);
   }
   break;
  case 141:
   printf("direct route");
   break;
  case 129:
   printf("VC set");
   break;
  case 133:
   printf("retry mode");
   break;
  case 128:
   printf("X86 encoding");
   break;
  case 138:
   printf("Gen3");
   break;
  case 139:
   printf("function-level extension");
   break;
  case 134:
   printf("power management");
   break;
  case 137:
   printf("high node count");
   break;
  default:
   printf("unknown %02x", command);
   break;
  }
}
