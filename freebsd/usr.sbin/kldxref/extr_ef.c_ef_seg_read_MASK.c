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
struct TYPE_5__ {int /*<<< orphan*/  ef_name; scalar_t__ ef_verbose; } ;
typedef  scalar_t__ Elf_Off ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,size_t,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(elf_file_t ef, Elf_Off offset, size_t len, void *dest)
{
	Elf_Off ofs;

	ofs = FUNC0(ef, offset);
	if (ofs == 0) {
		if (ef->ef_verbose)
			FUNC2("ef_seg_read(%s): zero offset (%jx:%ju)",
			    ef->ef_name, (uintmax_t)offset, (uintmax_t)ofs);
		return (EFAULT);
	}
	return (FUNC1(ef, ofs, len, dest));
}