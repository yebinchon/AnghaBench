#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* elf_file_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ address; int /*<<< orphan*/  ef_name; scalar_t__ ef_verbose; } ;
typedef  scalar_t__ Elf_Off ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,size_t) ; 
 size_t FUNC1 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int
FUNC3(elf_file_t ef, Elf_Off offset, size_t len, char *dest)
{

	if (offset >= ef->size) {
		if (ef->ef_verbose)
			FUNC2("ef_obj_seg_read_string(%s): bad offset (%lx)",
			    ef->ef_name, (long)offset);
		return (EFAULT);
	}

	if (ef->size - offset < len)
		len = ef->size - offset;

	if (FUNC1(ef->address + offset, len) == len)
		return (EFAULT);

	FUNC0(dest, ef->address + offset, len);
	return (0);
}