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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct sf_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFB_CPUPRIVATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct sf_buf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sf_buf *
FUNC3(vm_object_t object, vm_ooffset_t offset)
{
	vm_page_t m;

	m = FUNC2(object, offset);
	if (m == NULL)
		return (NULL);
	FUNC0();
	return (FUNC1(m, SFB_CPUPRIVATE));
}