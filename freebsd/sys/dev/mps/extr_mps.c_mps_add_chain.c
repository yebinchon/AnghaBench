
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct mps_command {int cm_sglsize; TYPE_2__* cm_sge; int cm_chain_list; TYPE_4__* cm_sc; } ;
struct mps_chain {TYPE_1__* chain; int chain_busaddr; } ;
struct TYPE_8__ {int reqframesz; } ;
struct TYPE_7__ {int Address; int Flags; scalar_t__ NextChainOffset; int Length; } ;
struct TYPE_6__ {int MpiChain; } ;
struct TYPE_5__ {int MpiSimple; } ;
typedef TYPE_2__ MPI2_SGE_IO_UNION ;
typedef TYPE_3__ MPI2_SGE_CHAIN32 ;


 int ENOBUFS ;
 int MPI2_SGE_FLAGS_CHAIN_ELEMENT ;
 int MPS_SGC_SIZE ;
 int TAILQ_INSERT_TAIL (int *,struct mps_chain*,int ) ;
 int chain_link ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 struct mps_chain* mps_alloc_chain (TYPE_4__*) ;
 int panic (char*) ;

__attribute__((used)) static int
mps_add_chain(struct mps_command *cm)
{
 MPI2_SGE_CHAIN32 *sgc;
 struct mps_chain *chain;
 u_int space;

 if (cm->cm_sglsize < MPS_SGC_SIZE)
  panic("MPS: Need SGE Error Code\n");

 chain = mps_alloc_chain(cm->cm_sc);
 if (chain == ((void*)0))
  return (ENOBUFS);

 space = cm->cm_sc->reqframesz;





 TAILQ_INSERT_TAIL(&cm->cm_chain_list, chain, chain_link);

 sgc = (MPI2_SGE_CHAIN32 *)&cm->cm_sge->MpiChain;
 sgc->Length = htole16(space);
 sgc->NextChainOffset = 0;






 sgc->Flags = MPI2_SGE_FLAGS_CHAIN_ELEMENT;
 sgc->Address = htole32(chain->chain_busaddr);

 cm->cm_sge = (MPI2_SGE_IO_UNION *)&chain->chain->MpiSimple;
 cm->cm_sglsize = space;
 return (0);
}
