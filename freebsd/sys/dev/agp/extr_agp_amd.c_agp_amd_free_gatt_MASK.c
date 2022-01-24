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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct agp_amd_gatt {int ag_entries; scalar_t__ ag_virtual; scalar_t__ ag_vdir; } ;

/* Variables and functions */
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  M_AGP ; 
 int /*<<< orphan*/  FUNC0 (struct agp_amd_gatt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct agp_amd_gatt *gatt)
{
	FUNC1((vm_offset_t)gatt->ag_vdir, AGP_PAGE_SIZE);
	FUNC1((vm_offset_t)gatt->ag_virtual, gatt->ag_entries *
	    sizeof(u_int32_t));
	FUNC0(gatt, M_AGP);
}