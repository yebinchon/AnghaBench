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
struct mips_tmp_reloc {struct mips_tmp_reloc* next; } ;

/* Variables and functions */
 struct mips_tmp_reloc* ml ; 

__attribute__((used)) static struct mips_tmp_reloc *
FUNC0(void)
{
	struct mips_tmp_reloc *r;

	r = ml;
	if (r == NULL)
		return (NULL);
	ml = ml->next;
	return (r);
}