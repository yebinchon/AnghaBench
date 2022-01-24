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
typedef  int /*<<< orphan*/  u_char ;
struct partition {int /*<<< orphan*/  p_cpg; int /*<<< orphan*/  p_frag; int /*<<< orphan*/  p_fstype; int /*<<< orphan*/  p_fsize; int /*<<< orphan*/  p_offset; int /*<<< orphan*/  p_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(u_char *ptr, struct partition *d)
{
	FUNC1(ptr + 0, d->p_size);
	FUNC1(ptr + 4, d->p_offset);
	FUNC1(ptr + 8, d->p_fsize);
	ptr[12] = d->p_fstype;
	ptr[13] = d->p_frag;
	FUNC0(ptr + 14, d->p_cpg);
}