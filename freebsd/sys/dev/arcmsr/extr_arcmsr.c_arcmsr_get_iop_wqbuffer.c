
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct QBUFFER {int dummy; } ;
struct HBE_MessageUnit {int message_wbuffer; } ;
struct HBD_MessageUnit0 {TYPE_2__* phbdmu; } ;
struct HBC_MessageUnit {int message_wbuffer; } ;
struct HBB_MessageUnit {TYPE_1__* hbb_rwbuffer; } ;
struct HBA_MessageUnit {int message_wbuffer; } ;
struct AdapterControlBlock {int adapter_type; scalar_t__ pmu; } ;
struct TYPE_4__ {int message_wbuffer; } ;
struct TYPE_3__ {int message_wbuffer; } ;
__attribute__((used)) static struct QBUFFER *arcmsr_get_iop_wqbuffer( struct AdapterControlBlock *acb)
{
 struct QBUFFER *qbuffer = ((void*)0);

 switch (acb->adapter_type) {
 case 132: {
   struct HBA_MessageUnit *phbamu = (struct HBA_MessageUnit *)acb->pmu;

   qbuffer = (struct QBUFFER *)&phbamu->message_wbuffer;
  }
  break;
 case 131: {
   struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;

   qbuffer = (struct QBUFFER *)&phbbmu->hbb_rwbuffer->message_wbuffer;
  }
  break;
 case 130: {
   struct HBC_MessageUnit *phbcmu = (struct HBC_MessageUnit *)acb->pmu;

   qbuffer = (struct QBUFFER *)&phbcmu->message_wbuffer;
  }
  break;
 case 129: {
   struct HBD_MessageUnit0 *phbdmu = (struct HBD_MessageUnit0 *)acb->pmu;

   qbuffer = (struct QBUFFER *)&phbdmu->phbdmu->message_wbuffer;
  }
  break;
 case 128: {
   struct HBE_MessageUnit *phbcmu = (struct HBE_MessageUnit *)acb->pmu;

   qbuffer = (struct QBUFFER *)&phbcmu->message_wbuffer;
  }
  break;
 }
 return(qbuffer);
}
