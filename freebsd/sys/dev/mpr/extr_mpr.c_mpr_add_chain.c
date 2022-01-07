
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mpr_softc {int chain_frame_size; } ;
struct mpr_command {int cm_flags; int cm_sglsize; scalar_t__ cm_req; int * cm_sge; int cm_chain_list; struct mpr_softc* cm_sc; } ;
struct mpr_chain {int chain_busaddr; scalar_t__ chain; } ;
struct TYPE_5__ {void* High; void* Low; } ;
struct TYPE_8__ {int NextChainOffset; int Flags; TYPE_1__ Address; void* Length; } ;
struct TYPE_7__ {int IeeeSimple; TYPE_4__ IeeeChain; } ;
struct TYPE_6__ {int ChainOffset; } ;
typedef TYPE_2__ MPI2_REQUEST_HEADER ;
typedef TYPE_3__ MPI25_SGE_IO_UNION ;
typedef TYPE_4__ MPI25_IEEE_SGE_CHAIN64 ;


 int ENOBUFS ;
 int MPI2_IEEE_SGE_FLAGS_CHAIN_ELEMENT ;
 int MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR ;
 int MPR_CM_FLAGS_SGE_SIMPLE ;
 int MPR_ERROR ;
 int TAILQ_INSERT_TAIL (int *,struct mpr_chain*,int ) ;
 int chain_link ;
 void* htole32 (int) ;
 struct mpr_chain* mpr_alloc_chain (struct mpr_softc*) ;
 int mpr_dprint (struct mpr_softc*,int ,char*) ;
 int panic (char*) ;

__attribute__((used)) static int
mpr_add_chain(struct mpr_command *cm, int segsleft)
{
 struct mpr_softc *sc = cm->cm_sc;
 MPI2_REQUEST_HEADER *req;
 MPI25_IEEE_SGE_CHAIN64 *ieee_sgc;
 struct mpr_chain *chain;
 int sgc_size, current_segs, rem_segs, segs_per_frame;
 uint8_t next_chain_offset = 0;






 if (cm->cm_flags & MPR_CM_FLAGS_SGE_SIMPLE) {
  mpr_dprint(sc, MPR_ERROR, "A chain element cannot be added to "
      "an MPI SGL.\n");
  return(ENOBUFS);
 }

 sgc_size = sizeof(MPI25_IEEE_SGE_CHAIN64);
 if (cm->cm_sglsize < sgc_size)
  panic("MPR: Need SGE Error Code\n");

 chain = mpr_alloc_chain(cm->cm_sc);
 if (chain == ((void*)0))
  return (ENOBUFS);





 TAILQ_INSERT_TAIL(&cm->cm_chain_list, chain, chain_link);






 rem_segs = 0;
 if (cm->cm_sglsize < (sgc_size * segsleft)) {
  current_segs = (cm->cm_sglsize / sgc_size) - 1;
  rem_segs = segsleft - current_segs;
  segs_per_frame = sc->chain_frame_size / sgc_size;
  if (rem_segs > segs_per_frame) {
   next_chain_offset = segs_per_frame - 1;
  }
 }
 ieee_sgc = &((MPI25_SGE_IO_UNION *)cm->cm_sge)->IeeeChain;
 ieee_sgc->Length = next_chain_offset ?
     htole32((uint32_t)sc->chain_frame_size) :
     htole32((uint32_t)rem_segs * (uint32_t)sgc_size);
 ieee_sgc->NextChainOffset = next_chain_offset;
 ieee_sgc->Flags = (MPI2_IEEE_SGE_FLAGS_CHAIN_ELEMENT |
     MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR);
 ieee_sgc->Address.Low = htole32(chain->chain_busaddr);
 ieee_sgc->Address.High = htole32(chain->chain_busaddr >> 32);
 cm->cm_sge = &((MPI25_SGE_IO_UNION *)chain->chain)->IeeeSimple;
 req = (MPI2_REQUEST_HEADER *)cm->cm_req;
 req->ChainOffset = (sc->chain_frame_size - sgc_size) >> 4;

 cm->cm_sglsize = sc->chain_frame_size;
 return (0);
}
