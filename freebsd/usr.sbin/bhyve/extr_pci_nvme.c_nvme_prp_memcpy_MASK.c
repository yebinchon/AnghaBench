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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint64_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (struct vmctx*,size_t,size_t) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx, uint64_t prp1, uint64_t prp2, uint8_t *src,
	size_t len)
{
	uint8_t *dst;
	size_t bytes;

	if (len > (8 * 1024)) {
		return (-1);
	}

	/* Copy from the start of prp1 to the end of the physical page */
	bytes = PAGE_SIZE - (prp1 & PAGE_MASK);
	bytes = FUNC0(bytes, len);

	dst = FUNC2(ctx, prp1, bytes);
	if (dst == NULL) {
		return (-1);
	}

	FUNC1(dst, src, bytes);

	src += bytes;

	len -= bytes;
	if (len == 0) {
		return (0);
	}

	len = FUNC0(len, PAGE_SIZE);

	dst = FUNC2(ctx, prp2, len);
	if (dst == NULL) {
		return (-1);
	}

	FUNC1(dst, src, len);

	return (0);
}