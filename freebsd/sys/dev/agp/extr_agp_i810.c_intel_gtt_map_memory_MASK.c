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
typedef  int /*<<< orphan*/  u_int ;
struct sglist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sglist**) ; 
 int /*<<< orphan*/  intel_agp ; 

int
FUNC1(vm_page_t *pages, u_int num_entries,
    struct sglist **sg_list)
{

	return (FUNC0(intel_agp, pages, num_entries,
	    sg_list));
}