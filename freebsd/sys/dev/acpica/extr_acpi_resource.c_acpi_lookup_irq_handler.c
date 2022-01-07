
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct lookup_irq_request {scalar_t__ counter; scalar_t__ rid; int irq; int found; int pol; int trig; int * acpi_res; scalar_t__ checkrid; } ;
struct TYPE_8__ {int InterruptCount; int* Interrupts; int Triggering; int Polarity; } ;
struct TYPE_7__ {int InterruptCount; int* Interrupts; int Triggering; int Polarity; } ;
struct TYPE_9__ {TYPE_2__ ExtendedIrq; TYPE_1__ Irq; } ;
struct TYPE_10__ {int Type; TYPE_3__ Data; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_RESOURCE ;


 int ACPI_RESOURCE_EXTENDED_IRQ ;
 int ACPI_RESOURCE_IRQ ;


 size_t ACPI_RS_SIZE (int ) ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int KASSERT (int,char*) ;
 int bcopy (TYPE_4__*,int *,size_t) ;

__attribute__((used)) static ACPI_STATUS
acpi_lookup_irq_handler(ACPI_RESOURCE *res, void *context)
{
    struct lookup_irq_request *req;
    size_t len;
    u_int irqnum, irq, trig, pol;

    switch (res->Type) {
    case 128:
 irqnum = res->Data.Irq.InterruptCount;
 irq = res->Data.Irq.Interrupts[0];
 len = ACPI_RS_SIZE(ACPI_RESOURCE_IRQ);
 trig = res->Data.Irq.Triggering;
 pol = res->Data.Irq.Polarity;
 break;
    case 129:
 irqnum = res->Data.ExtendedIrq.InterruptCount;
 irq = res->Data.ExtendedIrq.Interrupts[0];
 len = ACPI_RS_SIZE(ACPI_RESOURCE_EXTENDED_IRQ);
 trig = res->Data.ExtendedIrq.Triggering;
 pol = res->Data.ExtendedIrq.Polarity;
 break;
    default:
 return (AE_OK);
    }
    if (irqnum != 1)
 return (AE_OK);
    req = (struct lookup_irq_request *)context;
    if (req->checkrid) {
 if (req->counter != req->rid) {
     req->counter++;
     return (AE_OK);
 }
 KASSERT(irq == req->irq, ("IRQ resources do not match"));
    } else {
 if (req->irq != irq)
     return (AE_OK);
    }
    req->found = 1;
    req->pol = pol;
    req->trig = trig;
    if (req->acpi_res != ((void*)0))
 bcopy(res, req->acpi_res, len);
    return (AE_CTRL_TERMINATE);
}
