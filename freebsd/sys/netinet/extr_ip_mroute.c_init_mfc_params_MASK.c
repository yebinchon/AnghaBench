#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mfcctl2 {int /*<<< orphan*/  mfcc_mcastgrp; int /*<<< orphan*/  mfcc_origin; } ;
struct mfc {int /*<<< orphan*/  mfc_last_assert; scalar_t__ mfc_wrong_if; scalar_t__ mfc_byte_cnt; scalar_t__ mfc_pkt_cnt; int /*<<< orphan*/  mfc_mcastgrp; int /*<<< orphan*/  mfc_origin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mfc*,struct mfcctl2*) ; 

__attribute__((used)) static void
FUNC2(struct mfc *rt, struct mfcctl2 *mfccp)
{
    rt->mfc_origin     = mfccp->mfcc_origin;
    rt->mfc_mcastgrp   = mfccp->mfcc_mcastgrp;

    FUNC1(rt, mfccp);

    /* initialize pkt counters per src-grp */
    rt->mfc_pkt_cnt    = 0;
    rt->mfc_byte_cnt   = 0;
    rt->mfc_wrong_if   = 0;
    FUNC0(&rt->mfc_last_assert);
}