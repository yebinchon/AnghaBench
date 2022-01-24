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
typedef  int uint64_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,size_t) ; 

__attribute__((used)) static int
FUNC2(void *arg, uint64_t from, void *to, size_t size)
{
	char *ptr;

	from &= 0x7fffffff;

	ptr = FUNC1(ctx, from, size);
	if (ptr == NULL)
		return (EFAULT);

	FUNC0(to, ptr, size);
	return (0);
}