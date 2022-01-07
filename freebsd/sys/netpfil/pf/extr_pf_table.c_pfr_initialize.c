
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_kentry {int dummy; } ;
struct TYPE_2__ {int limit; int zone; } ;


 int PFR_KENTRY_HIWAT ;
 size_t PF_LIMIT_TABLE_ENTRIES ;
 int UMA_ALIGN_PTR ;
 TYPE_1__* V_pf_limits ;
 int V_pfr_kentry_z ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

void
pfr_initialize(void)
{

 V_pfr_kentry_z = uma_zcreate("pf table entries",
     sizeof(struct pfr_kentry), ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
     0);
 V_pf_limits[PF_LIMIT_TABLE_ENTRIES].zone = V_pfr_kentry_z;
 V_pf_limits[PF_LIMIT_TABLE_ENTRIES].limit = PFR_KENTRY_HIWAT;
}
