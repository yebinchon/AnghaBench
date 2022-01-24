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
struct buf {int b_flags; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int B_INVAL ; 
 int B_NOCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_UFSMNT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *devfd, off_t loc, void **bufp, int size)
{
	struct buf *bp;
	int error;

	FUNC0(*bufp == NULL, ("ffs_use_bread: non-NULL *bufp %p\n", *bufp));
	*bufp = FUNC5(size, M_UFSMNT, M_WAITOK);
	if ((error = FUNC2((struct vnode *)devfd, FUNC4(loc), size, NOCRED,
	    &bp)) != 0)
		return (error);
	FUNC1(bp->b_data, *bufp, size);
	bp->b_flags |= B_INVAL | B_NOCACHE;
	FUNC3(bp);
	return (0);
}