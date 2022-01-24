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
typedef  int /*<<< orphan*/  uint32_t ;
struct fuse_iov {int /*<<< orphan*/  credit; int /*<<< orphan*/  allocated_size; int /*<<< orphan*/  base; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  M_FUSEMSG ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  fuse_iov_credit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct fuse_iov *fiov, size_t size)
{
	uint32_t msize = FUNC0(size);

	fiov->len = 0;

	fiov->base = FUNC1(msize, M_FUSEMSG, M_WAITOK | M_ZERO);

	fiov->allocated_size = msize;
	fiov->credit = fuse_iov_credit;
}