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
typedef  int u_int64_t ;
typedef  int u_int ;
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  char Elf32_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int ED_ALL ; 
 int ED_DYN ; 
 int ED_EHDR ; 
 int ED_GOT ; 
 int ED_HASH ; 
 int ED_INTERP ; 
 int ED_IS_ELF ; 
 int ED_NOTE ; 
 int ED_PHDR ; 
 int ED_REL ; 
 int ED_SHDR ; 
 int ED_SYMTAB ; 
 int /*<<< orphan*/  E_PHENTSIZE ; 
 int /*<<< orphan*/  E_PHNUM ; 
 int /*<<< orphan*/  E_PHOFF ; 
 int /*<<< orphan*/  E_SHENTSIZE ; 
 int /*<<< orphan*/  E_SHOFF ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
#define  PT_DYNAMIC 146 
#define  PT_INTERP 145 
#define  PT_LOAD 144 
#define  PT_NOTE 143 
#define  PT_NULL 142 
#define  PT_PHDR 141 
#define  PT_SHLIB 140 
 int /*<<< orphan*/  P_TYPE ; 
#define  SHT_DYNAMIC 139 
#define  SHT_DYNSYM 138 
#define  SHT_HASH 137 
#define  SHT_NOBITS 136 
#define  SHT_NOTE 135 
#define  SHT_NULL 134 
#define  SHT_PROGBITS 133 
#define  SHT_REL 132 
#define  SHT_RELA 131 
#define  SHT_SHLIB 130 
#define  SHT_STRTAB 129 
#define  SHT_SYMTAB 128 
 int /*<<< orphan*/  SH_NAME ; 
 int /*<<< orphan*/  SH_OFFSET ; 
 int /*<<< orphan*/  SH_TYPE ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 char* dynstr ; 
 int FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,void*) ; 
 int FUNC9 (char*,void*) ; 
 int FUNC10 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,void*) ; 
 int /*<<< orphan*/  FUNC12 (char*,void*) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*) ; 
 int /*<<< orphan*/  FUNC14 (char*,void*) ; 
 int /*<<< orphan*/  FUNC15 (char*,void*) ; 
 int /*<<< orphan*/  FUNC16 (char*,void*) ; 
 int /*<<< orphan*/  FUNC17 (char*,void*) ; 
 int /*<<< orphan*/  FUNC18 (char*,void*) ; 
 int /*<<< orphan*/  FUNC19 (char*,void*) ; 
 int /*<<< orphan*/  FUNC20 (char*,void*) ; 
 int /*<<< orphan*/  FUNC21 (char*,void*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int,char*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC27 (int,struct stat*) ; 
 int FUNC28 (int,char**,char*) ; 
 char* FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC30 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * out ; 
 char* shstrtab ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC31 (char*,char*) ; 
 char* strtab ; 
 int /*<<< orphan*/  FUNC32 () ; 

int
FUNC33(int ac, char **av)
{
	cap_rights_t rights;
	u_int64_t phoff;
	u_int64_t shoff;
	u_int64_t phentsize;
	u_int64_t phnum;
	u_int64_t shentsize;
	u_int64_t shnum;
	u_int64_t shstrndx;
	u_int64_t offset;
	u_int64_t name;
	u_int64_t type;
	struct stat sb;
	u_int flags;
	Elf32_Ehdr *e;
	void *p;
	void *sh;
	void *v;
	int fd;
	int ch;
	int i;

	out = stdout;
	flags = 0;
	while ((ch = FUNC28(ac, av, "acdEeiGhnprsw:")) != -1)
		switch (ch) {
		case 'a':
			flags = ED_ALL;
			break;
		case 'c':
			flags |= ED_SHDR;
			break;
		case 'd':
			flags |= ED_DYN;
			break;
		case 'E':
			flags = ED_IS_ELF;
			break;
		case 'e':
			flags |= ED_EHDR;
			break;
		case 'i':
			flags |= ED_INTERP;
			break;
		case 'G':
			flags |= ED_GOT;
			break;
		case 'h':
			flags |= ED_HASH;
			break;
		case 'n':
			flags |= ED_NOTE;
			break;
		case 'p':
			flags |= ED_PHDR;
			break;
		case 'r':
			flags |= ED_REL;
			break;
		case 's':
			flags |= ED_SYMTAB;
			break;
		case 'w':
			if ((out = FUNC26(optarg, "w")) == NULL)
				FUNC22(1, "%s", optarg);
			FUNC1(&rights, CAP_FSTAT, CAP_WRITE);
			if (FUNC5(FUNC25(out), &rights) < 0)
				FUNC22(1, "unable to limit rights for %s", optarg);
			break;
		case '?':
		default:
			FUNC32();
		}
	ac -= optind;
	av += optind;
	if (ac == 0 || flags == 0 || ((flags & ED_IS_ELF) &&
	    (ac != 1 || (flags & ~ED_IS_ELF) || out != stdout)))
		FUNC32();
	if ((fd = FUNC30(*av, O_RDONLY)) < 0 ||
	    FUNC27(fd, &sb) < 0)
		FUNC22(1, "%s", *av);
	FUNC1(&rights, CAP_MMAP_R);
	if (FUNC5(fd, &rights) < 0)
		FUNC22(1, "unable to limit rights for %s", *av);
	FUNC1(&rights);
	if (FUNC5(STDIN_FILENO, &rights) < 0 ||
	    FUNC4() < 0 || FUNC3() < 0) {
                FUNC22(1, "unable to limit rights for stdio");
	}
	if (FUNC2() < 0)
		FUNC22(1, "unable to enter capability mode");
	e = FUNC29(NULL, sb.st_size, PROT_READ, MAP_SHARED, fd, 0);
	if (e == MAP_FAILED)
		FUNC22(1, NULL);
	if (!FUNC0(*(Elf32_Ehdr *)e)) {
		if (flags & ED_IS_ELF)
			FUNC24(1);
		FUNC23(1, "not an elf file");
	} else if (flags & ED_IS_ELF)
		FUNC24 (0);
	phoff = FUNC6(e, e, E_PHOFF);
	shoff = FUNC6(e, e, E_SHOFF);
	phentsize = FUNC7(e, e, E_PHENTSIZE);
	phnum = FUNC7(e, e, E_PHNUM);
	shentsize = FUNC7(e, e, E_SHENTSIZE);
	p = (char *)e + phoff;
	if (shoff > 0) {
		sh = (char *)e + shoff;
		shnum = FUNC8(e, sh);
		shstrndx = FUNC9(e, sh);
		offset = FUNC6(e, (char *)sh + shstrndx * shentsize,
		    SH_OFFSET);
		shstrtab = (char *)e + offset;
	} else {
		sh = NULL;
		shnum = 0;
		shstrndx = 0;
		shstrtab = NULL;
	}
	for (i = 0; (u_int64_t)i < shnum; i++) {
		name = FUNC10(e, (char *)sh + i * shentsize, SH_NAME);
		offset = FUNC6(e, (char *)sh + i * shentsize, SH_OFFSET);
		if (FUNC31(shstrtab + name, ".strtab") == 0)
			strtab = (char *)e + offset;
		if (FUNC31(shstrtab + name, ".dynstr") == 0)
			dynstr = (char *)e + offset;
	}
	if (flags & ED_EHDR)
		FUNC12(e, sh);
	if (flags & ED_PHDR)
		FUNC17(e, p);
	if (flags & ED_SHDR)
		FUNC20(e, sh);
	for (i = 0; (u_int64_t)i < phnum; i++) {
		v = (char *)p + i * phentsize;
		type = FUNC10(e, v, P_TYPE);
		switch (type) {
		case PT_INTERP:
			if (flags & ED_INTERP)
				FUNC15(e, v);
			break;
		case PT_NULL:
		case PT_LOAD:
		case PT_DYNAMIC:
		case PT_NOTE:
		case PT_SHLIB:
		case PT_PHDR:
			break;
		}
	}
	for (i = 0; (u_int64_t)i < shnum; i++) {
		v = (char *)sh + i * shentsize;
		type = FUNC10(e, v, SH_TYPE);
		switch (type) {
		case SHT_SYMTAB:
			if (flags & ED_SYMTAB)
				FUNC21(e, v, strtab);
			break;
		case SHT_DYNAMIC:
			if (flags & ED_DYN)
				FUNC11(e, v);
			break;
		case SHT_RELA:
			if (flags & ED_REL)
				FUNC19(e, v);
			break;
		case SHT_REL:
			if (flags & ED_REL)
				FUNC18(e, v);
			break;
		case SHT_NOTE:
			name = FUNC10(e, v, SH_NAME);
			if (flags & ED_NOTE &&
			    FUNC31(shstrtab + name, ".note.tag") == 0)
				FUNC16(e, v);
			break;
		case SHT_DYNSYM:
			if (flags & ED_SYMTAB)
				FUNC21(e, v, dynstr);
			break;
		case SHT_PROGBITS:
			name = FUNC10(e, v, SH_NAME);
			if (flags & ED_GOT &&
			    FUNC31(shstrtab + name, ".got") == 0)
				FUNC13(e, v);
			break;
		case SHT_HASH:
			if (flags & ED_HASH)
				FUNC14(e, v);
			break;
		case SHT_NULL:
		case SHT_STRTAB:
		case SHT_NOBITS:
		case SHT_SHLIB:
			break;
		}
	}

	return 0;
}