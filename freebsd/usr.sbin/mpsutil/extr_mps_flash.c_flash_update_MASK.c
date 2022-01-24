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
struct stat {int st_size; } ;
struct TYPE_6__ {char* VendorID; char* ProductID; } ;
struct TYPE_5__ {char* ProductID; } ;
typedef  TYPE_1__ MPI2_IOC_FACTS_REPLY ;
typedef  TYPE_2__ MPI2_FW_IMAGE_HEADER ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 char* MPI2_MFGPAGE_VENDORID_LSI ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,unsigned char*,int,int) ; 
 TYPE_1__* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mps_unit ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*,struct stat*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static int
FUNC13(int argc, char **argv)
{
	int error, fd;
	unsigned char *mem = NULL;
	struct stat st;
	bool bios = false;
	MPI2_FW_IMAGE_HEADER *fwheader;
	MPI2_IOC_FACTS_REPLY *facts;

	if (argc < 2) {
		FUNC12("missing argument: expecting 'firmware' or bios'");
		return (EINVAL);
	}

	if (FUNC10(argv[1], "bios") == 0) {
		bios = true;
	} else if (FUNC10(argv[1], "firmware") != 0) {
		FUNC12("Invalid argument '%s', expecting 'firmware' or 'bios'",
		    argv[1]);
	}

	if (argc > 4) {
		FUNC12("update firmware: extra arguments");
		return (EINVAL);
	}

	if (argc != 3) {
		FUNC12("no firmware specified");
		return (EINVAL);
	}

	if (FUNC9(argv[2], &st) == -1) {
		error = errno;
		FUNC11("stat");
		return (error);
	}

	fd = FUNC7(argv[2], O_RDONLY);
	if (fd < 0) {
		error = errno;
		FUNC11("open");
		return (error);
	}

	mem = FUNC2(NULL, st.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
	if (mem == MAP_FAILED) {
		error = errno;
		FUNC11("mmap");
		FUNC0(fd);
		return (error);
	}
	FUNC0(fd);

	fd = FUNC5(mps_unit);
	if (fd < 0) {
		error = errno;
		FUNC11("mps_open");
		FUNC6(mem, st.st_size);
		return (error);
	}

	if ((facts = FUNC4(fd)) == NULL) {
		FUNC12("could not get controller IOCFacts\n");
		FUNC6(mem, st.st_size);
		FUNC0(fd);
		return (EINVAL);
	}

	if (bios) {
		/* Check boot record magic number */
		if (((mem[0x01]<<8) + mem[0x00]) != 0xaa55) {
			FUNC12("Invalid bios: no boot record magic number");
			FUNC6(mem, st.st_size);
			FUNC0(fd);
			FUNC1(facts);
			return (1);
		}
		if ((st.st_size % 512) != 0) {
			FUNC12("Invalid bios: size not a multiple of 512");
			FUNC6(mem, st.st_size);
			FUNC0(fd);
			FUNC1(facts);
			return (1);
		}
	} else {
		fwheader = (MPI2_FW_IMAGE_HEADER *)mem;
		if (fwheader->VendorID != MPI2_MFGPAGE_VENDORID_LSI) {
			FUNC12("Invalid firmware:");
			FUNC12("  Expected Vendor ID: %04x",
			    MPI2_MFGPAGE_VENDORID_LSI);
			FUNC12("  Image Vendor ID: %04x", fwheader->VendorID);
			FUNC6(mem, st.st_size);
			FUNC0(fd);
			FUNC1(facts);
			return (1);
		}

		if (fwheader->ProductID != facts->ProductID) {
			FUNC12("Invalid image:");
			FUNC12("  Expected Product ID: %04x", facts->ProductID);
			FUNC12("  Image Product ID: %04x", fwheader->ProductID);
			FUNC6(mem, st.st_size);
			FUNC0(fd);
			FUNC1(facts);
			return (1);
		}
	}

	FUNC8("Updating %s...\n", argv[1]);
	if (FUNC3(fd, mem, st.st_size, bios) < 0) {
		FUNC12("Fail to update %s", argv[1]);
		FUNC6(mem, st.st_size);
		FUNC0(fd);
		FUNC1(facts);
		return (1);
	}

	FUNC6(mem, st.st_size);
	FUNC0(fd);
	FUNC1(facts);
	FUNC8("%s successfully updated\n", argv[1]);
	return (0);
}