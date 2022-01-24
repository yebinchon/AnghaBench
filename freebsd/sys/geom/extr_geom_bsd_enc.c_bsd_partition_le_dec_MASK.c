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
typedef  void* u_char ;
struct partition {int /*<<< orphan*/  p_cpg; void* p_frag; void* p_fstype; void* p_fsize; void* p_offset; void* p_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 void* FUNC1 (void**) ; 

void
FUNC2(u_char *ptr, struct partition *d)
{
	d->p_size = FUNC1(ptr + 0);
	d->p_offset = FUNC1(ptr + 4);
	d->p_fsize = FUNC1(ptr + 8);
	d->p_fstype = ptr[12];
	d->p_frag = ptr[13];
	d->p_cpg = FUNC0(ptr + 14);
}