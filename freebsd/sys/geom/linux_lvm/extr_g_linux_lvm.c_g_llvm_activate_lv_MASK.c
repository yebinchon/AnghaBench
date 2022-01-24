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
struct g_provider {int mediasize; int /*<<< orphan*/  name; struct g_llvm_lv* private; int /*<<< orphan*/  sectorsize; } ;
struct g_llvm_vg {int vg_extentsize; int /*<<< orphan*/  vg_sectorsize; int /*<<< orphan*/  vg_name; struct g_geom* vg_geom; } ;
struct g_llvm_lv {scalar_t__ lv_sgactive; scalar_t__ lv_sgcount; struct g_provider* lv_gprov; scalar_t__ lv_extentcount; int /*<<< orphan*/  lv_name; } ;
struct g_geom {int dummy; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_provider*,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC3 (struct g_geom*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct g_llvm_vg *vg, struct g_llvm_lv *lv)
{
	struct g_geom *gp;
	struct g_provider *pp;

	FUNC4();

	FUNC1(lv->lv_sgactive == lv->lv_sgcount, ("segment missing"));

	gp = vg->vg_geom;
	pp = FUNC3(gp, "linux_lvm/%s-%s", vg->vg_name, lv->lv_name);
	pp->mediasize = vg->vg_extentsize * (off_t)lv->lv_extentcount;
	pp->sectorsize = vg->vg_sectorsize;
	FUNC2(pp, 0);
	lv->lv_gprov = pp;
	pp->private = lv;

	FUNC0(1, "Created %s, %juM", pp->name,
	    pp->mediasize / (1024*1024));

	return (0);
}