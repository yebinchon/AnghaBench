#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct ucred {int dummy; } ;
struct msdosfsmount {scalar_t__ pm_freeclustercount; } ;
struct denode {int de_Attributes; scalar_t__ de_FileSize; int de_flag; struct msdosfsmount* de_pmp; } ;
struct TYPE_3__ {int v_vflag; } ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 TYPE_1__* FUNC0 (struct denode*) ; 
 int /*<<< orphan*/  DE_CLEAR ; 
 int DE_MODIFIED ; 
 int DE_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int EINVAL ; 
 int EISDIR ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC2 (struct msdosfsmount*) ; 
 int VV_ROOT ; 
 scalar_t__ FUNC3 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct denode*,scalar_t__,int /*<<< orphan*/ ,struct ucred*) ; 
 int FUNC5 (struct denode*,int) ; 
 int FUNC6 (struct denode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(struct denode *dep, u_long length, struct ucred *cred)
{
	struct msdosfsmount *pmp = dep->de_pmp;
	u_long count;
	int error;

	/*
	 * The root of a DOS filesystem cannot be extended.
	 */
	if ((FUNC0(dep)->v_vflag & VV_ROOT) && !FUNC2(pmp))
		return (EINVAL);

	/*
	 * Directories cannot be extended.
	 */
	if (dep->de_Attributes & ATTR_DIRECTORY)
		return (EISDIR);

	if (length <= dep->de_FileSize)
		FUNC7("deextend: file too large");

	/*
	 * Compute the number of clusters to allocate.
	 */
	count = FUNC3(pmp, length) - FUNC3(pmp, dep->de_FileSize);
	if (count > 0) {
		if (count > pmp->pm_freeclustercount)
			return (ENOSPC);
		error = FUNC6(dep, count, NULL, NULL, DE_CLEAR);
		if (error) {
			/* truncate the added clusters away again */
			(void) FUNC4(dep, dep->de_FileSize, 0, cred);
			return (error);
		}
	}
	dep->de_FileSize = length;
	dep->de_flag |= DE_UPDATE | DE_MODIFIED;
	return (FUNC5(dep, !FUNC1(FUNC0(dep))));
}