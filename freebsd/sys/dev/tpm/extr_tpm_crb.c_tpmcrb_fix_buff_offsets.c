
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tpmcrb_sc {scalar_t__ cmd_off; scalar_t__ rsp_off; } ;
struct TYPE_5__ {scalar_t__ Address; size_t AddressLength; } ;
struct TYPE_6__ {TYPE_1__ FixedMemory32; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_2__ Data; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_RESOURCE ;


 scalar_t__ ACPI_RESOURCE_TYPE_FIXED_MEMORY32 ;
 int AE_OK ;

__attribute__((used)) static ACPI_STATUS
tpmcrb_fix_buff_offsets(ACPI_RESOURCE *res, void *arg)
{
 struct tpmcrb_sc *crb_sc;
 size_t length;
 uint32_t base_addr;

 crb_sc = (struct tpmcrb_sc *)arg;

 if (res->Type != ACPI_RESOURCE_TYPE_FIXED_MEMORY32)
  return (AE_OK);

 base_addr = res->Data.FixedMemory32.Address;
 length = res->Data.FixedMemory32.AddressLength;

 if (crb_sc->cmd_off > base_addr && crb_sc->cmd_off < base_addr + length)
  crb_sc->cmd_off -= base_addr;
 if (crb_sc->rsp_off > base_addr && crb_sc->rsp_off < base_addr + length)
  crb_sc->rsp_off -= base_addr;

 return (AE_OK);
}
