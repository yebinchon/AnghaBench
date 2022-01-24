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
struct stat {int st_mode; int /*<<< orphan*/  st_size; } ;
struct section_dispatch_table {int sdt_rel; int sdt_hash; int sdt_nzlist; int sdt_strings; } ;
struct relocation_info {int dummy; } ;
struct nzlist {int dummy; } ;
struct nlist {int dummy; } ;
struct exec {int a_syms; scalar_t__ a_entry; int a_trsize; int a_drsize; scalar_t__ a_bss; scalar_t__ a_data; scalar_t__ a_text; scalar_t__ a_midmag; } ;
struct TYPE_2__ {scalar_t__ d_sdt; } ;
struct _dynamic {long d_version; TYPE_1__ d_un; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
 int EX_DYNAMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 scalar_t__ FUNC1 (struct exec const) ; 
 scalar_t__ FUNC2 (struct exec const) ; 
 int FUNC3 (struct exec const) ; 
 int FUNC4 (struct exec const) ; 
 scalar_t__ FUNC5 (struct exec const) ; 
 scalar_t__ FUNC6 (struct exec const) ; 
 int FUNC7 (struct exec const) ; 
 int FUNC8 (struct exec const) ; 
 int FUNC9 (struct exec const) ; 
 scalar_t__ FUNC10 (struct exec const) ; 
 int FUNC11 (struct exec const) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int S_IFMT ; 
 int S_IFREG ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 void* data_addr ; 
 void* data_base ; 
 int /*<<< orphan*/  FUNC16 (char*,struct relocation_info const*,int,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 struct _dynamic const* dyn ; 
 int /*<<< orphan*/  error_count ; 
 struct exec const* ex ; 
 void* file_base ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC24 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long origin ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 struct relocation_info const* rel_base ; 
 int rel_count ; 
 struct relocation_info const* rtrel_base ; 
 int rtrel_count ; 
 void* rtstr_base ; 
 struct nzlist const* rtsym_base ; 
 int rtsym_count ; 
 int /*<<< orphan*/  rtsym_name ; 
 unsigned char* rtsym_used ; 
 struct section_dispatch_table const* sdt ; 
 int FUNC26 (char const*,struct stat*) ; 
 void* str_base ; 
 struct nlist const* sym_base ; 
 int sym_count ; 
 int /*<<< orphan*/  sym_name ; 
 unsigned char* sym_used ; 
 void* text_addr ; 
 void* text_base ; 
 int /*<<< orphan*/  FUNC27 (char*,char const*) ; 

void
FUNC28(const char *fname)
{
    int fd;
    struct stat sb;
    caddr_t objbase;

    if (FUNC26(fname, &sb) == -1) {
	FUNC27("cannot stat \"%s\"", fname);
	++error_count;
	return;
    }

    if ((sb.st_mode & S_IFMT) != S_IFREG) {
	FUNC27("\"%s\" is not a regular file", fname);
	++error_count;
	return;
    }

    if ((fd = FUNC24(fname, O_RDONLY, 0)) == -1) {
	FUNC27("cannot open \"%s\"", fname);
	++error_count;
	return;
    }

    objbase = FUNC22(0, sb.st_size, PROT_READ, MAP_SHARED, fd, 0);
    if (objbase == (caddr_t) -1) {
	FUNC27("cannot mmap \"%s\"", fname);
	++error_count;
	FUNC15(fd);
	return;
    }

    FUNC15(fd);

    file_base = (const char *) objbase;	/* Makes address arithmetic easier */

    if (FUNC0(*(const Elf32_Ehdr*) FUNC12(file_base))) {
	FUNC27("%s: this is an ELF program; use readelf to examine", fname);
	++error_count;
	FUNC23(objbase, sb.st_size);
	return;
    }

    ex = (const struct exec *) FUNC12(file_base);

    FUNC25("%s: a_midmag = 0x%lx\n", fname, (long)ex->a_midmag);
    FUNC25("  magic = 0x%lx = 0%lo, netmagic = 0x%lx = 0%lo\n",
	(long)FUNC5(*ex), (long)FUNC5(*ex),
	(long)FUNC6(*ex), (long)FUNC6(*ex));

    if (FUNC1(*ex)) {
	FUNC27("%s: bad magic number", fname);
	++error_count;
	FUNC23(objbase, sb.st_size);
	return;
    }

    FUNC25("  a_text   = 0x%lx\n", (long)ex->a_text);
    FUNC25("  a_data   = 0x%lx\n", (long)ex->a_data);
    FUNC25("  a_bss    = 0x%lx\n", (long)ex->a_bss);
    FUNC25("  a_syms   = 0x%lx\n", (long)ex->a_syms);
    FUNC25("  a_entry  = 0x%lx\n", (long)ex->a_entry);
    FUNC25("  a_trsize = 0x%lx\n", (long)ex->a_trsize);
    FUNC25("  a_drsize = 0x%lx\n", (long)ex->a_drsize);

    text_base = file_base + FUNC11(*ex);
    data_base = file_base + FUNC3(*ex);
    rel_base = (const struct relocation_info *)
	FUNC12(file_base + FUNC7(*ex));
    sym_base = (const struct nlist *) FUNC12(file_base + FUNC9(*ex));
    str_base = file_base + FUNC8(*ex);

    rel_count = (ex->a_trsize + ex->a_drsize) / sizeof rel_base[0];
    FUNC13(rel_count * sizeof rel_base[0] == ex->a_trsize + ex->a_drsize);
    sym_count = ex->a_syms / sizeof sym_base[0];
    FUNC13(sym_count * sizeof sym_base[0] == ex->a_syms);

    if (sym_count != 0) {
	sym_used = (unsigned char *) FUNC14(sym_count, sizeof(unsigned char));
	FUNC13(sym_used != NULL);
    }

    FUNC25("  Entry = 0x%lx\n", (long)ex->a_entry);
    FUNC25("  Text offset = %x, address = %lx\n", FUNC11(*ex),
	(long)FUNC10(*ex));
    FUNC25("  Data offset = %lx, address = %lx\n", (long)FUNC3(*ex),
	(long)FUNC2(*ex));

    /*
     * In an executable program file, everything is relocated relative to
     * the assumed run-time load address, i.e., N_TXTADDR(*ex), i.e., 0x1000.
     *
     * In a shared library file, everything is relocated relative to the
     * start of the file, i.e., N_TXTOFF(*ex), i.e., 0.
     *
     * The way to tell the difference is by looking at ex->a_entry.   If it
     * is >= 0x1000, then we have an executable program.  Otherwise, we
     * have a shared library.
     *
     * When a program is executed, the entire file is mapped into memory,
     * including the a.out header and so forth.  But it is not mapped at
     * address 0; rather it is mapped at address 0x1000.  The first page
     * of the user's address space is left unmapped in order to catch null
     * pointer dereferences.
     *
     * In this program, when we map in an executable program, we have to
     * simulate the empty page by decrementing our assumed base address by
     * a pagesize.
     */

    text_addr = text_base;
    data_addr = data_base;
    origin = 0;

    if (ex->a_entry >= PAGE_SIZE) {	/* Executable, not a shared library */
	/*
	 * The fields in the object have already been relocated on the
	 * assumption that the object will be loaded at N_TXTADDR(*ex).
	 * We have to compensate for that.
	 */
	text_addr -= PAGE_SIZE;
	data_addr -= PAGE_SIZE;
	origin = PAGE_SIZE;
	FUNC25("  Program, origin = %lx\n", origin);
    } else if (FUNC4(*ex) & EX_DYNAMIC)
	FUNC25("  Shared library, origin = %lx\n", origin);
    else
	FUNC25("  Object file, origin = %lx\n", origin);

    if (FUNC4(*ex) & EX_DYNAMIC) {
	dyn = (const struct _dynamic *) FUNC12(data_base);
	FUNC25("  Dynamic version = %d\n", dyn->d_version);

	sdt = (const struct section_dispatch_table *)
	    FUNC12(text_addr + (unsigned long) dyn->d_un.d_sdt);

	rtrel_base = (const struct relocation_info *)
	    FUNC12(text_addr + sdt->sdt_rel);
	rtrel_count = (sdt->sdt_hash - sdt->sdt_rel) / sizeof rtrel_base[0];
	FUNC13(rtrel_count * sizeof rtrel_base[0] ==
	    (size_t)(sdt->sdt_hash - sdt->sdt_rel));

	rtsym_base = (const struct nzlist *)
	    FUNC12(text_addr + sdt->sdt_nzlist);
	rtsym_count = (sdt->sdt_strings - sdt->sdt_nzlist) /
	    sizeof rtsym_base[0];
	FUNC13(rtsym_count * sizeof rtsym_base[0] ==
	    (size_t)(sdt->sdt_strings - sdt->sdt_nzlist));

	if (rtsym_count != 0) {
	    rtsym_used = (unsigned char *) FUNC14(rtsym_count,
		sizeof(unsigned char));
	    FUNC13(rtsym_used != NULL);
	}

	rtstr_base = text_addr + sdt->sdt_strings;
    }

    FUNC18();
    FUNC19();
    FUNC16("Relocations", rel_base, rel_count, sym_name, sym_used);
    FUNC20();

    FUNC16("Run-time relocations", rtrel_base, rtrel_count, rtsym_name,
	rtsym_used);
    FUNC17();

    if (rtsym_used != NULL) {
	FUNC21(rtsym_used);
	rtsym_used = NULL;
    }
    if (sym_used != NULL) {
	FUNC21(sym_used);
	sym_used = NULL;
    }
    FUNC23(objbase, sb.st_size);
}