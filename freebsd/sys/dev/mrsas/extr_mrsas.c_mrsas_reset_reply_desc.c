
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrsas_softc {scalar_t__ msix_vectors; int reply_q_depth; TYPE_1__* reply_desc_mem; scalar_t__* last_reply_idx; } ;
typedef TYPE_1__* pMpi2ReplyDescriptorsUnion_t ;
struct TYPE_2__ {int Words; } ;


 int MRSAS_ULONG_MAX ;

void
mrsas_reset_reply_desc(struct mrsas_softc *sc)
{
 int i, count;
 pMpi2ReplyDescriptorsUnion_t reply_desc;

 count = sc->msix_vectors > 0 ? sc->msix_vectors : 1;
 for (i = 0; i < count; i++)
  sc->last_reply_idx[i] = 0;

 reply_desc = sc->reply_desc_mem;
 for (i = 0; i < sc->reply_q_depth; i++, reply_desc++) {
  reply_desc->Words = MRSAS_ULONG_MAX;
 }
}
