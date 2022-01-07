
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int High; int Low; } ;
struct TYPE_4__ {TYPE_1__ Address64; } ;
typedef int SGE_SIMPLE_UNION ;


 int FlagsLength ;
 int MPT_2_HOST32 (int *,int ) ;
 TYPE_2__ u ;

void
mpt2host_sge_simple_union(SGE_SIMPLE_UNION *sge)
{

 MPT_2_HOST32(sge, FlagsLength);
 MPT_2_HOST32(sge, u.Address64.Low);
 MPT_2_HOST32(sge, u.Address64.High);
}
