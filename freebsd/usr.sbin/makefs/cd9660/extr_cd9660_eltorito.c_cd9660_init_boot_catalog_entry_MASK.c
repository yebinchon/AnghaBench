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
struct boot_catalog_entry {int dummy; } ;

/* Variables and functions */
 struct boot_catalog_entry* FUNC0 (int,int) ; 

__attribute__((used)) static struct boot_catalog_entry *
FUNC1(void)
{
	return FUNC0(1, sizeof(struct boot_catalog_entry));
}