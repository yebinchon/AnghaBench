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
struct tsizes {long ts_symsz; int /*<<< orphan*/  ts_strsz; } ;
typedef  int /*<<< orphan*/  linker_file_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  Elf_Sym ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static int
FUNC2(linker_file_t lf, void *arg)
{
	struct tsizes *ts;
	const Elf_Sym *symtab;
	caddr_t strtab;
	long syms;

	ts = arg;

	syms = FUNC1(lf, &symtab);
	ts->ts_symsz += syms * sizeof(Elf_Sym);
	ts->ts_strsz += FUNC0(lf, &strtab);

	return (0);
}