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
struct mod_metadata {scalar_t__ md_type; scalar_t__ md_cval; } ;
struct elf_file {int dummy; } ;
typedef  int /*<<< orphan*/  md ;
typedef  int /*<<< orphan*/  cval ;
typedef  int /*<<< orphan*/  Elf_Off ;

/* Variables and functions */
 int EFT_KERNEL ; 
 int EFT_KLD ; 
 int /*<<< orphan*/  FUNC0 (struct elf_file*) ; 
 int FUNC1 (struct elf_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct elf_file*,int /*<<< orphan*/ ,long*,long*,long*) ; 
 int /*<<< orphan*/  FUNC3 (struct elf_file*,long,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct elf_file*,int /*<<< orphan*/ ,int,struct mod_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct elf_file*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  MAXMODNAME ; 
 scalar_t__ MDT_MODULE ; 
 int /*<<< orphan*/  MDT_SETNAME ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ dflag ; 
 int FUNC7 (char*,struct elf_file*,scalar_t__) ; 
 int FUNC8 (char*,struct elf_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void**) ; 
 int /*<<< orphan*/  FUNC10 (struct mod_metadata*,char*,struct elf_file*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char*) ; 

__attribute__((used)) static int
FUNC13(char *filename, char *kldname)
{
	struct mod_metadata md;
	struct elf_file ef;
	void **p;
	int error, eftype;
	long start, finish, entries, i;
	char cval[MAXMODNAME + 1];

	if (verbose || dflag)
		FUNC11("%s\n", filename);
	error = FUNC8(filename, &ef, verbose);
	if (error != 0) {
		error = FUNC7(filename, &ef, verbose);
		if (error != 0) {
			if (verbose)
				FUNC12(error, "elf_open(%s)", filename);
			return (error);
		}
	}
	eftype = FUNC1(&ef);
	if (eftype != EFT_KLD && eftype != EFT_KERNEL)  {
		FUNC0(&ef);
		return (0);
	}
	do {
		FUNC6(FUNC2(&ef, MDT_SETNAME, &start, &finish,
		    &entries));
		FUNC6(FUNC3(&ef, start, sizeof(*p) * entries,
		    (void *)&p));
		/*
		 * Do a first pass to find MDT_MODULE.  It is required to be
		 * ordered first in the output linker.hints stream because it
		 * serves as an implicit record boundary between distinct klds
		 * in the stream.  Other MDTs only make sense in the context of
		 * a specific MDT_MODULE.
		 *
		 * Some compilers (e.g., GCC 6.4.0 xtoolchain) or binutils
		 * (e.g., GNU binutils 2.32 objcopy/ld.bfd) can reorder
		 * MODULE_METADATA set entries relative to the source ordering.
		 * This is permitted by the C standard; memory layout of
		 * file-scope objects is left implementation-defined.  There is
		 * no requirement that source code ordering is retained.
		 *
		 * Handle that here by taking two passes to ensure MDT_MODULE
		 * records are emitted to linker.hints before other MDT records
		 * in the same kld.
		 */
		for (i = 0; i < entries; i++) {
			FUNC6(FUNC4(&ef, (Elf_Off)p[i], sizeof(md),
			    &md));
			FUNC6(FUNC5(&ef, (Elf_Off)md.md_cval,
			    sizeof(cval), cval));
			if (md.md_type == MDT_MODULE) {
				FUNC10(&md, cval, &ef, kldname);
				break;
			}
		}
		if (error != 0) {
			FUNC12(error, "error while reading %s", filename);
			break;
		}

		/*
		 * Second pass for all !MDT_MODULE entries.
		 */
		for (i = 0; i < entries; i++) {
			FUNC6(FUNC4(&ef, (Elf_Off)p[i], sizeof(md),
			    &md));
			FUNC6(FUNC5(&ef, (Elf_Off)md.md_cval,
			    sizeof(cval), cval));
			if (md.md_type != MDT_MODULE)
				FUNC10(&md, cval, &ef, kldname);
		}
		if (error != 0)
			FUNC12(error, "error while reading %s", filename);
		FUNC9(p);
	} while(0);
	FUNC0(&ef);
	return (error);
}