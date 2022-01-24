#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int ExtPageLength; int ExtPageType; int PageType; } ;
struct TYPE_3__ {int PageLength; int PageType; } ;
typedef  TYPE_1__ MPI2_CONFIG_PAGE_HEADER ;
typedef  TYPE_2__ MPI2_CONFIG_EXTENDED_PAGE_HEADER ;

/* Variables and functions */
 int EINVAL ; 
 int HD_REVERSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int,int,scalar_t__,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int,int,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mps_unit ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int
FUNC11(int ac, char **av)
{
	MPI2_CONFIG_PAGE_HEADER *hdr;
	MPI2_CONFIG_EXTENDED_PAGE_HEADER *ehdr;
	void *data;
	uint32_t addr;
	uint16_t IOCStatus;
	uint8_t page, num;
	int fd, error, len, attrs;
	char *pgname, *pgattr;

	fd = FUNC5(mps_unit);
	if (fd < 0) {
		error = errno;
		FUNC10("mps_open");
		return (error);
	}

	addr = 0;
	num = 0;
	page = 0;

	switch (ac) {
	case 4:
		addr = (uint32_t)FUNC9(av[3], NULL, 0);
	case 3:
		num = (uint8_t)FUNC9(av[2], NULL, 0);
	case 2:
		page = (uint8_t)FUNC9(av[1], NULL, 0);
		break;
	default:
		errno = EINVAL;
		FUNC10("cfgpage: not enough arguments");
		return (EINVAL);
	}

	if (page >= 0x10)
		data = FUNC7(fd, page, 0, num, addr,
		    &IOCStatus);
	 else 
		data = FUNC6(fd, page, num, addr, &IOCStatus);

	if (data == NULL) {
		error = errno;
		FUNC10("Error retrieving cfg page: %s\n",
		    FUNC4(IOCStatus));
		return (error);
	}

	if (page >= 0x10) {
		ehdr = data;
		len = ehdr->ExtPageLength * 4;
		page = ehdr->ExtPageType;
		attrs = ehdr->PageType >> 4;
	} else {
		hdr = data;
		len = hdr->PageLength * 4;
		page = hdr->PageType & 0xf;
		attrs = hdr->PageType >> 4;
	}

	pgname = FUNC2(page);
	if (attrs == 0)
		pgattr = "Read-only";
	else if (attrs == 1)
		pgattr = "Read-Write";
	else if (attrs == 2)
		pgattr = "Read-Write Persistent";
	else
		pgattr = "Unknown Page Attribute";

	FUNC8("Page 0x%x: %s %d, %s\n", page, pgname, num, pgattr);
	FUNC3(data, len, NULL, HD_REVERSED | 4);
	FUNC1(data);
	FUNC0(fd);
	return (0);
}