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
typedef  void* vm_offset_t ;
struct acpi_user_mapping {void* va; void* pa; } ;

/* Variables and functions */
 struct acpi_user_mapping* FUNC0 (void*,size_t) ; 

__attribute__((used)) static void *
FUNC1(vm_offset_t pa, size_t size)
{
	struct	acpi_user_mapping *map;

	map = FUNC0(pa, size);
	return (map->va + (pa - map->pa));
}