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
typedef  int vm_offset_t ;
struct pvo_entry {int pvo_vaddr; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_4__ {int /*<<< orphan*/  pmap_pvo; } ;

/* Variables and functions */
 int ADDR_POFF ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct pvo_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int /*<<< orphan*/  pvo_tree ; 

__attribute__((used)) static struct pvo_entry *
FUNC2(pmap_t pm, vm_offset_t va)
{
	struct pvo_entry key;

	FUNC0(pm, MA_OWNED);

	key.pvo_vaddr = va & ~ADDR_POFF;
	return (FUNC1(pvo_tree, &pm->pmap_pvo, &key));
}