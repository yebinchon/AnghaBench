
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsslot {int dummy; } ;
struct nfsclsession {scalar_t__ nfsess_slots; scalar_t__* nfsess_slotseq; TYPE_1__* nfsess_cbslots; } ;
struct TYPE_2__ {int * nfssl_reply; } ;


 int NFSBZERO (TYPE_1__*,int) ;
 int NFSV4_CBSLOTS ;
 int m_freem (int *) ;

__attribute__((used)) static void
nfscl_initsessionslots(struct nfsclsession *sep)
{
 int i;

 for (i = 0; i < NFSV4_CBSLOTS; i++) {
  if (sep->nfsess_cbslots[i].nfssl_reply != ((void*)0))
   m_freem(sep->nfsess_cbslots[i].nfssl_reply);
  NFSBZERO(&sep->nfsess_cbslots[i], sizeof(struct nfsslot));
 }
 for (i = 0; i < 64; i++)
  sep->nfsess_slotseq[i] = 0;
 sep->nfsess_slots = 0;
}
