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
typedef  int vm_ooffset_t ;

/* Variables and functions */
 int DEV_BSIZE ; 
 int PAGE_MASK ; 

__attribute__((used)) static int
FUNC0(vm_ooffset_t offset)
{

	return ((offset & PAGE_MASK) / DEV_BSIZE);
}