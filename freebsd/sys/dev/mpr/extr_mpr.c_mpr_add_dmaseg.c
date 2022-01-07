
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef size_t u_int ;
struct mpr_command {int cm_flags; } ;
struct TYPE_6__ {int Flags; size_t Length; int Address; } ;
struct TYPE_5__ {size_t FlagsLength; int Address; } ;
typedef TYPE_1__ MPI2_SGE_SIMPLE64 ;
typedef TYPE_2__ MPI2_IEEE_SGE_SIMPLE64 ;


 int MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR ;
 size_t MPI2_SGE_FLAGS_64_BIT_ADDRESSING ;
 size_t MPI2_SGE_FLAGS_SHIFT ;
 size_t MPI2_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPR_CM_FLAGS_SGE_SIMPLE ;
 int mpr_from_u64 (int ,int *) ;
 int mpr_push_ieee_sge (struct mpr_command*,TYPE_2__*,int) ;
 int mpr_push_sge (struct mpr_command*,TYPE_1__*,int,int) ;

int
mpr_add_dmaseg(struct mpr_command *cm, vm_paddr_t pa, size_t len, u_int flags,
    int segsleft)
{
 MPI2_SGE_SIMPLE64 sge;
 MPI2_IEEE_SGE_SIMPLE64 ieee_sge;

 if (!(cm->cm_flags & MPR_CM_FLAGS_SGE_SIMPLE)) {
  ieee_sge.Flags = (MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR);
  ieee_sge.Length = len;
  mpr_from_u64(pa, &ieee_sge.Address);

  return (mpr_push_ieee_sge(cm, &ieee_sge, segsleft));
 } else {




  flags |= MPI2_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_SGE_FLAGS_64_BIT_ADDRESSING;

  sge.FlagsLength = len | (flags << MPI2_SGE_FLAGS_SHIFT);
  mpr_from_u64(pa, &sge.Address);

  return (mpr_push_sge(cm, &sge, sizeof sge, segsleft));
 }
}
