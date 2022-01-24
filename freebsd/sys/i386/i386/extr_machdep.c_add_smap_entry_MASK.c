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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct bios_smap {int type; int /*<<< orphan*/  length; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int RB_VERBOSE ; 
 scalar_t__ SMAP_TYPE_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bios_smap *smap, vm_paddr_t *physmap, int *physmap_idxp)
{
	if (boothowto & RB_VERBOSE)
		FUNC1("SMAP type=%02x base=%016llx len=%016llx\n",
		    smap->type, smap->base, smap->length);

	if (smap->type != SMAP_TYPE_MEMORY)
		return (1);

	return (FUNC0(smap->base, smap->length, physmap,
	    physmap_idxp));
}