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
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int shared_page_free ; 
 TYPE_1__* shared_page_obj ; 

__attribute__((used)) static int
FUNC2(int size, int align)
{
	int res;

	res = FUNC1(shared_page_free, align);
	if (res + size >= FUNC0(shared_page_obj->size))
		res = -1;
	else
		shared_page_free = res + size;
	return (res);
}