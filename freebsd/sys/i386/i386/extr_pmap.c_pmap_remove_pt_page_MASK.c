#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_offset_t ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {int /*<<< orphan*/  pm_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int PDRSHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __inline vm_page_t
FUNC2(pmap_t pmap, vm_offset_t va)
{

	FUNC0(pmap, MA_OWNED);
	return (FUNC1(&pmap->pm_root, va >> PDRSHIFT));
}