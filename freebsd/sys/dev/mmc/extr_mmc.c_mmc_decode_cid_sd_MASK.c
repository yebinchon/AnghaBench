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
typedef  int /*<<< orphan*/  uint32_t ;
struct mmc_cid {void* mdt_month; scalar_t__ mdt_year; void* psn; void* prv; void** pnm; void* oid; void* mid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_cid*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void
FUNC2(uint32_t *raw_cid, struct mmc_cid *cid)
{
	int i;

	/* There's no version info, so we take it on faith */
	FUNC0(cid, 0, sizeof(*cid));
	cid->mid = FUNC1(raw_cid, 128, 120, 8);
	cid->oid = FUNC1(raw_cid, 128, 104, 16);
	for (i = 0; i < 5; i++)
		cid->pnm[i] = FUNC1(raw_cid, 128, 96 - i * 8, 8);
	cid->pnm[5] = 0;
	cid->prv = FUNC1(raw_cid, 128, 56, 8);
	cid->psn = FUNC1(raw_cid, 128, 24, 32);
	cid->mdt_year = FUNC1(raw_cid, 128, 12, 8) + 2000;
	cid->mdt_month = FUNC1(raw_cid, 128, 8, 4);
}