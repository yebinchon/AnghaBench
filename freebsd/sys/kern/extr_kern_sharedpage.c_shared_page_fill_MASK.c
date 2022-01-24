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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  shared_page_alloc_sx ; 
 int /*<<< orphan*/  FUNC1 (int,int,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(int size, int align, const void *data)
{
	int res;

	FUNC2(&shared_page_alloc_sx);
	res = FUNC0(size, align);
	if (res != -1)
		FUNC1(res, size, data);
	FUNC3(&shared_page_alloc_sx);
	return (res);
}