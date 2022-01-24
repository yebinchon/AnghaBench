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
struct g_llvm_vg {int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  vg_lvs; int /*<<< orphan*/  vg_pvs; } ;
struct g_llvm_segment {int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  vg_lvs; int /*<<< orphan*/  vg_pvs; } ;
struct g_llvm_pv {int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  vg_lvs; int /*<<< orphan*/  vg_pvs; } ;
struct g_llvm_lv {int /*<<< orphan*/  lv_segs; int /*<<< orphan*/  vg_lvs; int /*<<< orphan*/  vg_pvs; } ;

/* Variables and functions */
 struct g_llvm_vg* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_llvm_vg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GLLVM ; 
 int /*<<< orphan*/  FUNC2 (struct g_llvm_vg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lv_next ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  sg_next ; 
 int /*<<< orphan*/  vg_next ; 

__attribute__((used)) static void
FUNC3(struct g_llvm_vg *vg)
{
	struct g_llvm_pv *pv;
	struct g_llvm_lv *lv;
	struct g_llvm_segment *sg;

	/* Free all the structures */
	while ((pv = FUNC0(&vg->vg_pvs)) != NULL) {
		FUNC1(pv, pv_next);
		FUNC2(pv, M_GLLVM);
	}
	while ((lv = FUNC0(&vg->vg_lvs)) != NULL) {
		while ((sg = FUNC0(&lv->lv_segs)) != NULL) {
			FUNC1(sg, sg_next);
			FUNC2(sg, M_GLLVM);
		}
		FUNC1(lv, lv_next);
		FUNC2(lv, M_GLLVM);
	}
	FUNC1(vg, vg_next);
	FUNC2(vg, M_GLLVM);
}