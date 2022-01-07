
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct mfcctl2 {int* mfcc_flags; TYPE_1__ mfcc_rp; int * mfcc_ttls; int mfcc_parent; } ;
struct mfc {int* mfc_flags; TYPE_1__ mfc_rp; int * mfc_ttls; int mfc_parent; } ;


 int INADDR_ANY ;
 int MRT_MFC_FLAGS_ALL ;
 int MRT_MFC_RP ;
 int V_mrt_api_config ;
 int V_numvifs ;

__attribute__((used)) static void
update_mfc_params(struct mfc *rt, struct mfcctl2 *mfccp)
{
    int i;

    rt->mfc_parent = mfccp->mfcc_parent;
    for (i = 0; i < V_numvifs; i++) {
 rt->mfc_ttls[i] = mfccp->mfcc_ttls[i];
 rt->mfc_flags[i] = mfccp->mfcc_flags[i] & V_mrt_api_config &
     MRT_MFC_FLAGS_ALL;
    }

    if (V_mrt_api_config & MRT_MFC_RP)
 rt->mfc_rp = mfccp->mfcc_rp;
    else
 rt->mfc_rp.s_addr = INADDR_ANY;
}
