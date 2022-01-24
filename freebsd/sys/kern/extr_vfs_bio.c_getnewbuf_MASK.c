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
struct TYPE_2__ {size_t bo_domain; } ;
struct vnode {int v_vflag; scalar_t__ v_type; TYPE_1__ v_bufobj; } ;
struct bufdomain {int dummy; } ;
struct buf {int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_INVAL ; 
 int GB_KVAALLOC ; 
 int GB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ VCHR ; 
 int VV_MD ; 
 int VV_SYSTEM ; 
 struct bufdomain* bdomain ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 struct buf* FUNC2 (struct bufdomain*) ; 
 scalar_t__ FUNC3 (struct bufdomain*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufdomain*,int) ; 
 scalar_t__ FUNC5 (struct bufdomain*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufdomain*,struct vnode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct buf*,int,int) ; 
 int /*<<< orphan*/  getnewbufcalls ; 
 int /*<<< orphan*/  getnewbufrestarts ; 
 int /*<<< orphan*/  unmapped_buf_allowed ; 

__attribute__((used)) static struct buf *
FUNC9(struct vnode *vp, int slpflag, int slptimeo, int maxsize, int gbflags)
{
	struct bufdomain *bd;
	struct buf *bp;
	bool metadata, reserved;

	bp = NULL;
	FUNC0((gbflags & (GB_UNMAPPED | GB_KVAALLOC)) != GB_KVAALLOC,
	    ("GB_KVAALLOC only makes sense with GB_UNMAPPED"));
	if (!unmapped_buf_allowed)
		gbflags &= ~(GB_UNMAPPED | GB_KVAALLOC);

	if (vp == NULL || (vp->v_vflag & (VV_MD | VV_SYSTEM)) != 0 ||
	    vp->v_type == VCHR)
		metadata = true;
	else
		metadata = false;
	if (vp == NULL)
		bd = &bdomain[0];
	else
		bd = &bdomain[vp->v_bufobj.bo_domain];

	FUNC7(getnewbufcalls, 1);
	reserved = false;
	do {
		if (reserved == false &&
		    FUNC5(bd, maxsize, metadata) != 0) {
			FUNC7(getnewbufrestarts, 1);
			continue;
		}
		reserved = true;
		if ((bp = FUNC2(bd)) == NULL) {
			FUNC7(getnewbufrestarts, 1);
			continue;
		}
		if (FUNC8(bp, gbflags, maxsize) == 0)
			return (bp);
		break;
	} while (FUNC3(bd, false) == 0);

	if (reserved)
		FUNC4(bd, maxsize);
	if (bp != NULL) {
		bp->b_flags |= B_INVAL;
		FUNC1(bp);
	}
	FUNC6(bd, vp, gbflags, slpflag, slptimeo);

	return (NULL);
}