#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  TYPE_1__* elf_file_t ;
struct TYPE_5__ {size_t ef_relsz; size_t ef_relasz; int /*<<< orphan*/  ef_efile; int /*<<< orphan*/  const* ef_rela; int /*<<< orphan*/  const* ef_rel; int /*<<< orphan*/  ef_name; scalar_t__ ef_verbose; } ;
typedef  int /*<<< orphan*/  const Elf_Rela ;
typedef  int /*<<< orphan*/  const Elf_Rel ;
typedef  scalar_t__ Elf_Off ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  EF_RELOC_REL ; 
 int /*<<< orphan*/  EF_RELOC_RELA ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,size_t,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(elf_file_t ef, Elf_Off offset, size_t len, void *dest)
{
	Elf_Off ofs;
	const Elf_Rela *a;
	const Elf_Rel *r;
	int error;

	ofs = FUNC0(ef, offset);
	if (ofs == 0) {
		if (ef->ef_verbose)
			FUNC3("ef_seg_read_rel(%s): zero offset (%jx:%ju)",
			    ef->ef_name, (uintmax_t)offset, (uintmax_t)ofs);
		return (EFAULT);
	}
	if ((error = FUNC1(ef, ofs, len, dest)) != 0)
		return (error);

	for (r = ef->ef_rel; r < &ef->ef_rel[ef->ef_relsz]; r++) {
		error = FUNC2(ef->ef_efile, r, EF_RELOC_REL, 0, offset, len,
		    dest);
		if (error != 0)
			return (error);
	}
	for (a = ef->ef_rela; a < &ef->ef_rela[ef->ef_relasz]; a++) {
		error = FUNC2(ef->ef_efile, a, EF_RELOC_RELA, 0, offset, len,
		    dest);
		if (error != 0)
			return (error);
	}
	return (0);
}