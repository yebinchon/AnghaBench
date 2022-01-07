
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfcctl2 {int mfcc_mcastgrp; int mfcc_origin; } ;
struct mfc {int mfc_last_assert; scalar_t__ mfc_wrong_if; scalar_t__ mfc_byte_cnt; scalar_t__ mfc_pkt_cnt; int mfc_mcastgrp; int mfc_origin; } ;


 int timevalclear (int *) ;
 int update_mfc_params (struct mfc*,struct mfcctl2*) ;

__attribute__((used)) static void
init_mfc_params(struct mfc *rt, struct mfcctl2 *mfccp)
{
    rt->mfc_origin = mfccp->mfcc_origin;
    rt->mfc_mcastgrp = mfccp->mfcc_mcastgrp;

    update_mfc_params(rt, mfccp);


    rt->mfc_pkt_cnt = 0;
    rt->mfc_byte_cnt = 0;
    rt->mfc_wrong_if = 0;
    timevalclear(&rt->mfc_last_assert);
}
