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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(vm_object_t object, vm_page_t *m, int count, boolean_t sync,
    int *rtvals)
{

	FUNC0("phys_pager_putpage called");
}