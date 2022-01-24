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
struct fuse_iov {size_t allocated_size; scalar_t__ credit; char* base; size_t len; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  M_FUSEMSG ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 scalar_t__ fuse_iov_credit ; 
 scalar_t__ fuse_iov_permanent_bufsize ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,size_t,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct fuse_iov *fiov, size_t size)
{
	if (fiov->allocated_size < size ||
	    (fuse_iov_permanent_bufsize >= 0 &&
	    fiov->allocated_size - size > fuse_iov_permanent_bufsize &&
	    --fiov->credit < 0)) {

		fiov->base = FUNC3(fiov->base, FUNC0(size), M_FUSEMSG,
		    M_WAITOK | M_ZERO);
		if (!fiov->base) {
			FUNC2("FUSE: realloc failed");
		}
		fiov->allocated_size = FUNC0(size);
		fiov->credit = fuse_iov_credit;
		/* Clear data buffer after reallocation */
		FUNC1(fiov->base, size);
	} else if (size > fiov->len) {
		/* Clear newly extended portion of data buffer */
		FUNC1((char*)fiov->base + fiov->len, size - fiov->len);
	}
	fiov->len = size;
}