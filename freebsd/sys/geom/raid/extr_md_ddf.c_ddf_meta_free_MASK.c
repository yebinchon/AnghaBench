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
struct ddf_meta {int /*<<< orphan*/ * bbm; int /*<<< orphan*/ * pdd; int /*<<< orphan*/ * cr; int /*<<< orphan*/ * vdr; int /*<<< orphan*/ * pdr; int /*<<< orphan*/ * cdr; int /*<<< orphan*/ * hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MD_DDF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ddf_meta *meta)
{

	if (meta->hdr != NULL) {
		FUNC0(meta->hdr, M_MD_DDF);
		meta->hdr = NULL;
	}
	if (meta->cdr != NULL) {
		FUNC0(meta->cdr, M_MD_DDF);
		meta->cdr = NULL;
	}
	if (meta->pdr != NULL) {
		FUNC0(meta->pdr, M_MD_DDF);
		meta->pdr = NULL;
	}
	if (meta->vdr != NULL) {
		FUNC0(meta->vdr, M_MD_DDF);
		meta->vdr = NULL;
	}
	if (meta->cr != NULL) {
		FUNC0(meta->cr, M_MD_DDF);
		meta->cr = NULL;
	}
	if (meta->pdd != NULL) {
		FUNC0(meta->pdd, M_MD_DDF);
		meta->pdd = NULL;
	}
	if (meta->bbm != NULL) {
		FUNC0(meta->bbm, M_MD_DDF);
		meta->bbm = NULL;
	}
}