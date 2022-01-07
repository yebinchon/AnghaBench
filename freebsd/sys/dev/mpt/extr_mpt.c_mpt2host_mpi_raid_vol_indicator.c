
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Low; int High; } ;
struct TYPE_3__ {int Low; int High; } ;
typedef int MPI_RAID_VOL_INDICATOR ;


 TYPE_2__ BlocksRemaining ;
 int MPT_2_HOST16 (int *,int ) ;
 TYPE_1__ TotalBlocks ;

void
mpt2host_mpi_raid_vol_indicator(MPI_RAID_VOL_INDICATOR *vi)
{

 MPT_2_HOST16(vi, TotalBlocks.High);
 MPT_2_HOST16(vi, TotalBlocks.Low);
 MPT_2_HOST16(vi, BlocksRemaining.High);
 MPT_2_HOST16(vi, BlocksRemaining.Low);
}
