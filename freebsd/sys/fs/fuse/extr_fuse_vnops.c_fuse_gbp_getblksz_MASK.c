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
struct vnode {int dummy; } ;
typedef  int const off_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vnode*) ; 
 int FUNC2 (struct vnode*,int const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct vnode *vp, daddr_t lbn)
{
	off_t filesize;
	int blksz, err;
	const int biosize = FUNC1(vp);

	err = FUNC2(vp, &filesize, NULL, NULL);
	FUNC0(err == 0, ("vfs_bio_getpages can't handle errors here"));
	if (err)
		return biosize;

	if ((off_t)lbn * biosize >= filesize) {
		blksz = 0;
	} else if ((off_t)(lbn + 1) * biosize > filesize) {
		blksz = filesize - (off_t)lbn *biosize;
	} else {
		blksz = biosize;
	}
	return (blksz);
}