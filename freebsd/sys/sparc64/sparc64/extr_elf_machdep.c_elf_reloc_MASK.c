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
typedef  int /*<<< orphan*/  linker_file_t ;
typedef  int (* elf_lookup_fn ) (int /*<<< orphan*/ ,scalar_t__,int,int*) ;
struct TYPE_2__ {int r_offset; int r_addend; int /*<<< orphan*/  r_info; } ;
typedef  int Elf_Word ;
typedef  scalar_t__ Elf_Size ;
typedef  TYPE_1__ Elf_Rela ;
typedef  int Elf_Addr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ELF_RELOC_RELA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ R_SPARC_COPY ; 
 scalar_t__ R_SPARC_HIX22 ; 
 scalar_t__ R_SPARC_JMP_SLOT ; 
 scalar_t__ R_SPARC_LOX10 ; 
 scalar_t__ R_SPARC_NONE ; 
 scalar_t__ R_SPARC_OLO10 ; 
 scalar_t__ R_SPARC_RELATIVE ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 int /*<<< orphan*/  reloc_target_bitmask ; 

int
FUNC14(linker_file_t lf, Elf_Addr relocbase, const void *data, int type,
    elf_lookup_fn lookup)
{
	const Elf_Rela *rela;
	Elf_Word *where32;
	Elf_Addr *where;
	Elf_Size rtype, symidx;
	Elf_Addr value;
	Elf_Addr mask;
	Elf_Addr addr;
	int error;

	if (type != ELF_RELOC_RELA)
		return (-1);

	rela = (const Elf_Rela *)data;
	where = (Elf_Addr *)(relocbase + rela->r_offset);
	where32 = (Elf_Word *)where;
	rtype = FUNC1(rela->r_info);
	symidx = FUNC2(rela->r_info);

	if (rtype == R_SPARC_NONE || rtype == R_SPARC_RELATIVE)
		return (0);

	if (rtype == R_SPARC_JMP_SLOT || rtype == R_SPARC_COPY ||
	    rtype >= FUNC12(reloc_target_bitmask)) {
		FUNC13("kldload: unexpected relocation type %ld\n", rtype);
		return (-1);
	}

	if (FUNC8(rtype)) {
		FUNC13("kldload: unaligned relocation type %ld\n", rtype);
		return (-1);
	}

	value = rela->r_addend;

	if (FUNC6(rtype)) {
		error = lookup(lf, symidx, 1, &addr);
		if (error != 0)
			return (-1);
		value += addr;
		if (FUNC3(rtype))
			value = FUNC11(lf, value);
	}

	if (rtype == R_SPARC_OLO10)
		value = (value & 0x3ff) + FUNC0(rela->r_info);

	if (rtype == R_SPARC_HIX22)
		value ^= 0xffffffffffffffff;

	if (FUNC5(rtype))
		value -= (Elf_Addr)where;

	if (FUNC4(rtype))
		value = FUNC11(lf, value + relocbase);

	mask = FUNC9(rtype);
	value >>= FUNC10(rtype);
	value &= mask;

	if (rtype == R_SPARC_LOX10)
		value |= 0x1c00;

	if (FUNC7(rtype) > 32) {
		*where &= ~mask;
		*where |= value;
	} else {
		*where32 &= ~mask;
		*where32 |= value;
	}

	return (0);
}