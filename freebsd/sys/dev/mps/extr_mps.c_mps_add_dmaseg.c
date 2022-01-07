
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef size_t u_int ;
struct mps_command {int dummy; } ;
typedef int sge ;
struct TYPE_4__ {int Address; int FlagsLength; } ;
typedef TYPE_1__ MPI2_SGE_SIMPLE64 ;


 size_t MPI2_SGE_FLAGS_64_BIT_ADDRESSING ;
 size_t MPI2_SGE_FLAGS_SHIFT ;
 size_t MPI2_SGE_FLAGS_SIMPLE_ELEMENT ;
 int bzero (TYPE_1__*,int) ;
 int htole32 (size_t) ;
 int mps_from_u64 (int ,int *) ;
 int mps_push_sge (struct mps_command*,TYPE_1__*,int,int) ;

int
mps_add_dmaseg(struct mps_command *cm, vm_paddr_t pa, size_t len, u_int flags,
    int segsleft)
{
 MPI2_SGE_SIMPLE64 sge;




 bzero(&sge, sizeof(sge));
 flags |= MPI2_SGE_FLAGS_SIMPLE_ELEMENT |
     MPI2_SGE_FLAGS_64_BIT_ADDRESSING;
 sge.FlagsLength = htole32(len | (flags << MPI2_SGE_FLAGS_SHIFT));
 mps_from_u64(pa, &sge.Address);

 return (mps_push_sge(cm, &sge, sizeof sge, segsleft));
}
