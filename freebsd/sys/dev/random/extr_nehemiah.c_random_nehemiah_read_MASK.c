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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FPU_KERN_NORMAL ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  fpu_ctx_save ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static u_int
FUNC5(void *buf, u_int c)
{
	uint8_t *b;
	size_t count, ret;
	uint64_t tmp;

	FUNC2(curthread, fpu_ctx_save, FPU_KERN_NORMAL);
	b = buf;
	for (count = c; count > 0; count -= ret) {
		ret = FUNC0(FUNC1(&tmp), count);
		FUNC4(b, &tmp, ret);
		b += ret;
	}
	FUNC3(curthread, fpu_ctx_save);

	return (c);
}