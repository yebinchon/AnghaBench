#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct direntry {int dummy; } ;
struct denode {int de_flag; scalar_t__ de_refcnt; } ;
struct buf {int b_flags; } ;
typedef  int /*<<< orphan*/  dir ;
struct TYPE_4__ {int v_vflag; TYPE_1__* v_mount; } ;
struct TYPE_3__ {int mnt_flag; } ;

/* Variables and functions */
 int B_CLUSTEROK ; 
 int B_DELWRI ; 
 int /*<<< orphan*/  FUNC0 (struct denode*,struct timespec*,struct timespec*,struct timespec*) ; 
 TYPE_2__* FUNC1 (struct denode*) ; 
 int DE_ACCESS ; 
 int DE_CREATE ; 
 int /*<<< orphan*/  FUNC2 (struct direntry*,struct denode*) ; 
 int DE_MODIFIED ; 
 int DE_UPDATE ; 
 int EINVAL ; 
 int MNT_NOCLUSTERW ; 
 int MNT_RDONLY ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 scalar_t__ FUNC4 (struct direntry*,struct direntry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (struct buf*) ; 
 int FUNC9 (struct denode*,struct buf**,struct direntry**) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*) ; 
 scalar_t__ FUNC11 () ; 

int
FUNC12(struct denode *dep, int waitfor)
{
	struct direntry dir;
	struct timespec ts;
	struct buf *bp;
	struct direntry *dirp;
	int error;

	if (FUNC1(dep)->v_mount->mnt_flag & MNT_RDONLY) {
		dep->de_flag &= ~(DE_UPDATE | DE_CREATE | DE_ACCESS |
		    DE_MODIFIED);
		return (0);
	}
	FUNC10(&ts);
	FUNC0(dep, &ts, &ts, &ts);
	if ((dep->de_flag & DE_MODIFIED) == 0 && waitfor == 0)
		return (0);
	dep->de_flag &= ~DE_MODIFIED;
	if (FUNC1(dep)->v_vflag & VV_ROOT)
		return (EINVAL);
	if (dep->de_refcnt <= 0)
		return (0);
	error = FUNC9(dep, &bp, &dirp);
	if (error)
		return (error);
	FUNC2(&dir, dep);
	if (FUNC4(dirp, &dir, sizeof(dir)) == 0) {
		if (waitfor == 0 || (bp->b_flags & B_DELWRI) == 0) {
			FUNC6(bp);
			return (0);
		}
	} else
		*dirp = dir;
	if ((FUNC1(dep)->v_mount->mnt_flag & MNT_NOCLUSTERW) == 0)
		bp->b_flags |= B_CLUSTEROK;
	if (waitfor)
		error = FUNC8(bp);
	else if (FUNC11() || FUNC7())
		FUNC3(bp);
	else
		FUNC5(bp);
	return (error);
}