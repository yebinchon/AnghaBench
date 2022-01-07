
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_sata_channel {TYPE_1__* slot; int mtx; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int FSL_SATA_ERR_TIMEOUT ;
 int FSL_SATA_MAX_SLOTS ;
 scalar_t__ FSL_SATA_SLOT_RUNNING ;
 int MA_OWNED ;
 int fsl_sata_end_transaction (TYPE_1__*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
fsl_sata_process_timeout(struct fsl_sata_channel *ch)
{
 int i;

 mtx_assert(&ch->mtx, MA_OWNED);

 for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {

  if (ch->slot[i].state < FSL_SATA_SLOT_RUNNING)
   continue;
  fsl_sata_end_transaction(&ch->slot[i], FSL_SATA_ERR_TIMEOUT);
 }
}
