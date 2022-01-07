
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint16_t ;
typedef int u_int ;
struct TYPE_3__ {int SpaceId; int BitWidth; int Address; int BitOffset; } ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
acpi_print_gas(ACPI_GENERIC_ADDRESS *gas)
{
 switch(gas->SpaceId) {
 case 131:
  if (gas->BitWidth <= 32)
   printf("0x%08x:%u[%u] (Memory)",
       (u_int)gas->Address, gas->BitOffset,
       gas->BitWidth);
  else
   printf("0x%016jx:%u[%u] (Memory)",
       (uintmax_t)gas->Address, gas->BitOffset,
       gas->BitWidth);
  break;
 case 132:
  printf("0x%02x:%u[%u] (IO)", (u_int)gas->Address,
      gas->BitOffset, gas->BitWidth);
  break;
 case 130:
  printf("%x:%x+0x%x (PCI)", (uint16_t)(gas->Address >> 32),
         (uint16_t)((gas->Address >> 16) & 0xffff),
         (uint16_t)gas->Address);
  break;

 case 134:
  printf("0x%x:%u[%u] (EC)", (uint16_t)gas->Address,
         gas->BitOffset, gas->BitWidth);
  break;
 case 128:
  printf("0x%x:%u[%u] (SMBus)", (uint16_t)gas->Address,
         gas->BitOffset, gas->BitWidth);
  break;
 case 136:
 case 129:
 case 135:
 case 133:
 default:
  printf("0x%016jx (?)", (uintmax_t)gas->Address);
  break;
 }
}
