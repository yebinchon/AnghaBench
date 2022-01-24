#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w ;
typedef  int /*<<< orphan*/  u_char ;
struct elf_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; scalar_t__ r_addend; } ;
typedef  scalar_t__ Elf_Size ;
typedef  TYPE_1__ Elf_Rela ;
typedef  scalar_t__ Elf_Off ;

/* Variables and functions */
#define  EF_RELOC_RELA 129 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  R_SPARC_RELATIVE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

int
FUNC3(struct elf_file *ef, const void *reldata, int reltype, Elf_Off relbase,
    Elf_Off dataoff, size_t len, void *dest)
{
	const Elf_Rela *a;
	Elf_Size w;

	switch (reltype) {
	case EF_RELOC_RELA:
		a = reldata;
		if (relbase + a->r_offset >= dataoff && relbase + a->r_offset <
		    dataoff + len) {
			switch (FUNC0(a->r_info)) {
			case R_SPARC_RELATIVE:
				w = a->r_addend + relbase;
				FUNC1((u_char *)dest + (relbase + a->r_offset -
				    dataoff), &w, sizeof(w));
				break;
			default:
				FUNC2("unhandled relocation type %u",
				    (unsigned int)FUNC0(a->r_info));
				break;
			}
		}
		break;
	}
	return (0);
}