
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpt_iop_hba {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* iop_intr ) (struct hpt_iop_hba*) ;} ;


 int hptiop_lock_adapter (struct hpt_iop_hba*) ;
 int hptiop_unlock_adapter (struct hpt_iop_hba*) ;
 int stub1 (struct hpt_iop_hba*) ;

__attribute__((used)) static void hptiop_pci_intr(void *arg)
{
 struct hpt_iop_hba * hba = (struct hpt_iop_hba *)arg;
 hptiop_lock_adapter(hba);
 hba->ops->iop_intr(hba);
 hptiop_unlock_adapter(hba);
}
