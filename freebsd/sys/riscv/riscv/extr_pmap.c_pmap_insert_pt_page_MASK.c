#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_8__ {int /*<<< orphan*/  pm_root; } ;
struct TYPE_7__ {int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static __inline int
FUNC2(pmap_t pmap, vm_page_t ml3, bool promoted)
{

	FUNC0(pmap, MA_OWNED);
	ml3->valid = promoted ? VM_PAGE_BITS_ALL : 0;
	return (FUNC1(&pmap->pm_root, ml3));
}