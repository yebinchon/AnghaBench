
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct tpm_sc {int dummy; } ;
struct TYPE_7__ {int * Interrupts; } ;
struct TYPE_6__ {int * Interrupts; } ;
struct TYPE_8__ {TYPE_2__ ExtendedIrq; TYPE_1__ Irq; } ;
struct TYPE_9__ {int Type; TYPE_3__ Data; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_RESOURCE ;




 int AE_OK ;
 int TPM_INT_VECTOR ;
 int WR1 (struct tpm_sc*,int ,int ) ;

__attribute__((used)) static ACPI_STATUS
tpmtis_get_SIRQ_channel(ACPI_RESOURCE *res, void *arg)
{
 struct tpm_sc *sc;
 uint8_t channel;

 sc = (struct tpm_sc *)arg;

 switch (res->Type) {
 case 128:
  channel = res->Data.Irq.Interrupts[0];
  break;
 case 129:
  channel = res->Data.ExtendedIrq.Interrupts[0];
  break;
 default:
  return (AE_OK);
 }

 WR1(sc, TPM_INT_VECTOR, channel);
 return (AE_OK);
}
