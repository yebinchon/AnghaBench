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
struct g_uzip_lzma {int /*<<< orphan*/ * s; } ;
struct g_uzip_dapi {scalar_t__ pvt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GEOM_UZIP ; 
 int /*<<< orphan*/  FUNC0 (struct g_uzip_lzma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct g_uzip_dapi *lzpp)
{
	struct g_uzip_lzma *lzp;

	lzp = (struct g_uzip_lzma *)lzpp->pvt;
	if (lzp->s != NULL) {
		FUNC1(lzp->s);
		lzp->s = NULL;
	}

	FUNC0(lzp, M_GEOM_UZIP);
}