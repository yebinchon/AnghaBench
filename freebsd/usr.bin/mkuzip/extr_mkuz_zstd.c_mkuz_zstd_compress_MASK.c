#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t len; } ;
struct mkuz_blk {TYPE_1__ info; int /*<<< orphan*/  data; int /*<<< orphan*/  alen; } ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(void *p, const struct mkuz_blk *iblk, struct mkuz_blk *oblk)
{
	ZSTD_CCtx *cctx;
	size_t rc;

	cctx = p;

	rc = FUNC0(cctx, oblk->data, oblk->alen, iblk->data,
	    iblk->info.len);
	if (FUNC2(rc))
		FUNC3(1, "could not compress data: ZSTD_compress2: %s",
		    FUNC1(rc));

	oblk->info.len = rc;
}