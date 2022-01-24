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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int32_t ;
typedef  void* u_int16_t ;
struct fs {scalar_t__ fs_magic; int fs_old_cpg; int fs_old_nrpos; int fs_contigsumsize; } ;
struct TYPE_2__ {int cs_ndir; int cs_nbfree; int cs_nifree; int cs_nffree; } ;
struct cg {int cg_firstfield; int cg_magic; int cg_old_time; int cg_cgx; int cg_ndblk; int cg_rotor; int cg_frotor; int cg_irotor; int* cg_frsum; int cg_old_btotoff; int cg_old_boff; int cg_iusedoff; int cg_freeoff; int cg_nextfreeoff; int cg_clustersumoff; int cg_clusteroff; int cg_nclusterblks; int cg_niblk; int cg_initediblk; int /*<<< orphan*/  cg_time; TYPE_1__ cg_cs; void* cg_old_niblk; void* cg_old_ncyl; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ CG_MAGIC ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 int MAXFRAG ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct cg *o, struct cg *n, struct fs *fs)
{
	int i;
	u_int32_t *n32, *o32;
	u_int16_t *n16, *o16;
	int32_t btotoff, boff, clustersumoff;

	n->cg_firstfield = FUNC1(o->cg_firstfield);
	n->cg_magic = FUNC1(o->cg_magic);
	n->cg_old_time = FUNC1(o->cg_old_time);
	n->cg_cgx = FUNC1(o->cg_cgx);
	n->cg_old_ncyl = FUNC0(o->cg_old_ncyl);
	n->cg_old_niblk = FUNC0(o->cg_old_niblk);
	n->cg_ndblk = FUNC1(o->cg_ndblk);
	n->cg_cs.cs_ndir = FUNC1(o->cg_cs.cs_ndir);
	n->cg_cs.cs_nbfree = FUNC1(o->cg_cs.cs_nbfree);
	n->cg_cs.cs_nifree = FUNC1(o->cg_cs.cs_nifree);
	n->cg_cs.cs_nffree = FUNC1(o->cg_cs.cs_nffree);
	n->cg_rotor = FUNC1(o->cg_rotor);
	n->cg_frotor = FUNC1(o->cg_frotor);
	n->cg_irotor = FUNC1(o->cg_irotor);
	for (i = 0; i < MAXFRAG; i++)
		n->cg_frsum[i] = FUNC1(o->cg_frsum[i]);
	
	n->cg_old_btotoff = FUNC1(o->cg_old_btotoff);
	n->cg_old_boff = FUNC1(o->cg_old_boff);
	n->cg_iusedoff = FUNC1(o->cg_iusedoff);
	n->cg_freeoff = FUNC1(o->cg_freeoff);
	n->cg_nextfreeoff = FUNC1(o->cg_nextfreeoff);
	n->cg_clustersumoff = FUNC1(o->cg_clustersumoff);
	n->cg_clusteroff = FUNC1(o->cg_clusteroff);
	n->cg_nclusterblks = FUNC1(o->cg_nclusterblks);
	n->cg_niblk = FUNC1(o->cg_niblk);
	n->cg_initediblk = FUNC1(o->cg_initediblk);
	n->cg_time = FUNC2(o->cg_time);

	if (fs->fs_magic == FS_UFS2_MAGIC)
		return;

	if (n->cg_magic == CG_MAGIC) {
		btotoff = n->cg_old_btotoff;
		boff = n->cg_old_boff;
		clustersumoff = n->cg_clustersumoff;
	} else {
		btotoff = FUNC1(n->cg_old_btotoff);
		boff = FUNC1(n->cg_old_boff);
		clustersumoff = FUNC1(n->cg_clustersumoff);
	}
	n32 = (u_int32_t *)((u_int8_t *)n + btotoff);
	o32 = (u_int32_t *)((u_int8_t *)o + btotoff);
	n16 = (u_int16_t *)((u_int8_t *)n + boff);
	o16 = (u_int16_t *)((u_int8_t *)o + boff);

	for (i = 0; i < fs->fs_old_cpg; i++)
		n32[i] = FUNC1(o32[i]);
	
	for (i = 0; i < fs->fs_old_cpg * fs->fs_old_nrpos; i++)
		n16[i] = FUNC0(o16[i]);

	n32 = (u_int32_t *)((u_int8_t *)n + clustersumoff);
	o32 = (u_int32_t *)((u_int8_t *)o + clustersumoff);
	for (i = 1; i < fs->fs_contigsumsize + 1; i++)
		n32[i] = FUNC1(o32[i]);
}