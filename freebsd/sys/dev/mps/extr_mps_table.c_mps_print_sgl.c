
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct mps_softc {int dummy; } ;
struct mps_command {int cm_chain_list; scalar_t__ cm_req; } ;
struct mps_chain {scalar_t__ chain; } ;
struct TYPE_4__ {int Flags; int NextChainOffset; int Address; int Length; } ;
struct TYPE_3__ {int FlagsLength; int Address; } ;
typedef TYPE_1__ MPI2_SGE_SIMPLE64 ;
typedef TYPE_2__ MPI2_SGE_CHAIN32 ;
typedef int MPI2_REQUEST_HEADER ;


 int MPI2_SGE_FLAGS_END_OF_BUFFER ;
 int MPI2_SGE_FLAGS_END_OF_LIST ;
 int MPI2_SGE_FLAGS_LAST_ELEMENT ;
 int MPI2_SGE_FLAGS_SHIFT ;
 struct mps_chain* TAILQ_FIRST (int *) ;
 struct mps_chain* TAILQ_NEXT (struct mps_chain*,int ) ;
 int chain_link ;
 int hexdump (char*,int,int *,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int mps_to_u64 (int *) ;
 int printf (char*,...) ;

void
mps_print_sgl(struct mps_softc *sc, struct mps_command *cm, int offset)
{
 MPI2_SGE_SIMPLE64 *sge;
 MPI2_SGE_CHAIN32 *sgc;
 MPI2_REQUEST_HEADER *req;
 struct mps_chain *chain = ((void*)0);
 char *frame;
 u_int i = 0, flags;

 req = (MPI2_REQUEST_HEADER *)cm->cm_req;
 frame = (char *)cm->cm_req;
 sge = (MPI2_SGE_SIMPLE64 *)&frame[offset * 4];
 printf("SGL for command %p\n", cm);

 hexdump(frame, 128, ((void*)0), 0);
 while (frame != ((void*)0)) {
  flags = le32toh(sge->FlagsLength) >> MPI2_SGE_FLAGS_SHIFT;
  printf("seg%d flags=0x%02x len=0x%06x addr=0x%016jx\n",
      i, flags, le32toh(sge->FlagsLength) & 0xffffff,
      mps_to_u64(&sge->Address));
  if (flags & (MPI2_SGE_FLAGS_END_OF_LIST |
      MPI2_SGE_FLAGS_END_OF_BUFFER))
   break;
  sge++;
  i++;
  if (flags & MPI2_SGE_FLAGS_LAST_ELEMENT) {
   sgc = (MPI2_SGE_CHAIN32 *)sge;
   printf("chain flags=0x%x len=0x%x Offset=0x%x "
       "Address=0x%x\n", sgc->Flags, le16toh(sgc->Length),
       sgc->NextChainOffset, le32toh(sgc->Address));
   if (chain == ((void*)0))
    chain = TAILQ_FIRST(&cm->cm_chain_list);
   else
    chain = TAILQ_NEXT(chain, chain_link);
   frame = (char *)chain->chain;
   sge = (MPI2_SGE_SIMPLE64 *)frame;
   hexdump(frame, 128, ((void*)0), 0);
  }
 }
}
