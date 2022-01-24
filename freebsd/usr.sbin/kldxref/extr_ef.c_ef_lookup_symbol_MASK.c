#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* elf_file_t ;
struct TYPE_6__ {scalar_t__ st_name; scalar_t__ st_shndx; scalar_t__ st_value; int /*<<< orphan*/  st_info; } ;
struct TYPE_5__ {unsigned long* ef_buckets; unsigned long ef_nbuckets; unsigned long ef_nchains; char* ef_strtab; unsigned long* ef_chains; int /*<<< orphan*/  ef_name; TYPE_2__* ef_symtab; } ;
typedef  TYPE_2__ Elf_Sym ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 scalar_t__ SHN_UNDEF ; 
 unsigned long STN_UNDEF ; 
 scalar_t__ STT_FUNC ; 
 unsigned long FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(elf_file_t ef, const char *name, Elf_Sym **sym)
{
	unsigned long hash, symnum;
	Elf_Sym *symp;
	char *strp;

	/* First, search hashed global symbols */
	hash = FUNC1(name);
	symnum = ef->ef_buckets[hash % ef->ef_nbuckets];

	while (symnum != STN_UNDEF) {
		if (symnum >= ef->ef_nchains) {
			FUNC3("ef_lookup_symbol: file %s have corrupted symbol table\n",
			    ef->ef_name);
			return (ENOENT);
		}

		symp = ef->ef_symtab + symnum;
		if (symp->st_name == 0) {
			FUNC3("ef_lookup_symbol: file %s have corrupted symbol table\n",
			    ef->ef_name);
			return (ENOENT);
		}

		strp = ef->ef_strtab + symp->st_name;

		if (FUNC2(name, strp) == 0) {
			if (symp->st_shndx != SHN_UNDEF ||
			    (symp->st_value != 0 &&
				FUNC0(symp->st_info) == STT_FUNC)) {
				*sym = symp;
				return (0);
			} else
				return (ENOENT);
		}

		symnum = ef->ef_chains[symnum];
	}

	return (ENOENT);
}