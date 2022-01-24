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
struct TYPE_3__ {scalar_t__* e_ident; int /*<<< orphan*/  e_phnum; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  scalar_t__ Elf_Kind ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 size_t EI_DATA ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ ELF_K_AR ; 
 scalar_t__ ELF_K_ELF ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ SUPPORTED_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC10 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  long_opts ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

int
FUNC17(int argc, char **argv)
{
	GElf_Ehdr ehdr;
	Elf *elf;
	Elf_Kind kind;
	int ch, fd, editfeatures, retval;
	char *features;
	bool lflag;

	lflag = 0;
	editfeatures = 0;
	retval = 0;

	if (FUNC6(EV_CURRENT) == EV_NONE)
		FUNC7(EXIT_FAILURE, "elf_version error");

	while ((ch = FUNC10(argc, argv, "hle:", long_opts, NULL)) != -1) {
		switch (ch) {
		case 'l':
			FUNC12();
			lflag = true;
			break;
		case 'e':
			features = optarg;
			editfeatures = 1;
			break;
		case 'h':
		default:
			FUNC14();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc == 0) {
		if (lflag)
			FUNC8(0);
		else {
			FUNC16("no file(s) specified");
			FUNC14();
		}
	}

	while (argc) {
		elf = NULL;

		if ((fd = FUNC11(argv[0],
		    editfeatures ? O_RDWR : O_RDONLY, 0)) < 0) {
			FUNC15("error opening file %s", argv[0]);
			retval = 1;
			goto fail;
		}

		if ((elf = FUNC2(fd, ELF_C_READ, NULL)) == NULL) {
			FUNC16("elf_begin failed: %s", FUNC4(-1));
			retval = 1;
			goto fail;
		}

		if ((kind = FUNC5(elf)) != ELF_K_ELF) {
			if (kind == ELF_K_AR)
				FUNC16("file '%s' is an archive", argv[0]);
			else
				FUNC16("file '%s' is not an ELF file", argv[0]);
			retval = 1;
			goto fail;
		}

		if (FUNC9(elf, &ehdr) == NULL) {
			FUNC16("gelf_getehdr: %s", FUNC4(-1));
			retval = 1;
			goto fail;
		}
		/*
		 * XXX need to support cross-endian operation, but for now
		 * exit on error rather than misbehaving.
		 */
		if (ehdr.e_ident[EI_DATA] != SUPPORTED_ENDIAN) {
			FUNC16("file endianness must match host");
			retval = 1;
			goto fail;
		}

		if (!editfeatures) {
			if (!FUNC13(elf, ehdr.e_phnum, fd,
			    argv[0])) {
				retval = 1;
				goto fail;
			}
		} else if (!FUNC1(elf, ehdr.e_phnum, fd,
		    features)) {
			retval = 1;
			goto fail;
		}
fail:
		if (elf != NULL)
			FUNC3(elf);

		if (fd >= 0)
			FUNC0(fd);

		argc--;
		argv++;
	}

	return (retval);
}