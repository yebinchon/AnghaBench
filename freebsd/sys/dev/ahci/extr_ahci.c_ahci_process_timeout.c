
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_channel {int numslots; TYPE_1__* slot; int mtx; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int AHCI_ERR_TIMEOUT ;
 scalar_t__ AHCI_SLOT_RUNNING ;
 int MA_OWNED ;
 int ahci_end_transaction (TYPE_1__*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ahci_process_timeout(struct ahci_channel *ch)
{
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);

 for (i = 0; i < ch->numslots; i++) {

  if (ch->slot[i].state < AHCI_SLOT_RUNNING)
   continue;
  ahci_end_transaction(&ch->slot[i], AHCI_ERR_TIMEOUT);
 }
}
