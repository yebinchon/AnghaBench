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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int pc_domain; int pc_bus; int pc_dev; int pc_func; } ;
struct pci_bar_mmap {int pbm_reg; int pbm_bar_length; int pbm_bar_off; int /*<<< orphan*/  pbm_map_length; scalar_t__ pbm_map_base; TYPE_1__ pbm_sel; int /*<<< orphan*/  pbm_memattr; scalar_t__ pbm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PCIOCBARMMAP ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 int /*<<< orphan*/  _PATH_DEVPCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int,int,scalar_t__,int,int,int,int,int) ; 
 size_t FUNC4 (int*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,struct pci_bar_mmap*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 void* FUNC9 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const char *name, const char *reg, const char *bar_start,
    const char *bar_count, int width, int verbose)
{
	struct pci_bar_mmap pbm;
	uint32_t *dd;
	uint16_t *dh;
	uint8_t *db;
	uint64_t *dx, a, start, count;
	char *el;
	size_t res;
	int fd;

	start = 0;
	if (bar_start != NULL) {
		start = FUNC9(bar_start, &el, 0);
		if (*el != '\0')
			FUNC2(1, "Invalid bar start specification %s",
			    bar_start);
	}
	count = 0;
	if (bar_count != NULL) {
		count = FUNC9(bar_count, &el, 0);
		if (*el != '\0')
			FUNC2(1, "Invalid count specification %s",
			    bar_count);
	}

	pbm.pbm_sel = FUNC5(name);
	pbm.pbm_reg = FUNC9(reg, &el, 0);
	if (*reg == '\0' || *el != '\0')
		FUNC2(1, "Invalid bar specification %s", reg);
	pbm.pbm_flags = 0;
	pbm.pbm_memattr = VM_MEMATTR_UNCACHEABLE; /* XXX */

	fd = FUNC8(_PATH_DEVPCI, O_RDWR, 0);
	if (fd < 0)
		FUNC1(1, "%s", _PATH_DEVPCI);

	if (FUNC6(fd, PCIOCBARMMAP, &pbm) < 0)
		FUNC1(1, "ioctl(PCIOCBARMMAP)");

	if (count == 0)
		count = pbm.pbm_bar_length / width;
	if (start + count < start || (start + count) * width < (uint64_t)width)
		FUNC2(1, "(start + count) x width overflow");
	if ((start + count) * width > pbm.pbm_bar_length) {
		if (start * width > pbm.pbm_bar_length)
			count = 0;
		else
			count = (pbm.pbm_bar_length - start * width) / width;
	}
	if (verbose) {
		FUNC3(stderr,
		    "Dumping pci%d:%d:%d:%d BAR %x mapped base %ld "
		    "off %#x length %#x from %#x count %#x in %d-bytes\n",
		    pbm.pbm_sel.pc_domain, pbm.pbm_sel.pc_bus,
		    pbm.pbm_sel.pc_dev, pbm.pbm_sel.pc_func,
		    pbm.pbm_reg, pbm.pbm_map_base, pbm.pbm_bar_off,
		    pbm.pbm_bar_length, start, count, width);
	}
	switch (width) {
	case 1:
		db = (uint8_t *)(uintptr_t)((uintptr_t)pbm.pbm_map_base +
		    pbm.pbm_bar_off + start * width);
		for (a = 0; a < count; a += width, db++) {
			res = FUNC4(db, width, 1, stdout);
			if (res != 1) {
				FUNC2(1, "error writing to stdout");
				break;
			}
		}
		break;
	case 2:
		dh = (uint16_t *)(uintptr_t)((uintptr_t)pbm.pbm_map_base +
		    pbm.pbm_bar_off + start * width);
		for (a = 0; a < count; a += width, dh++) {
			res = FUNC4(dh, width, 1, stdout);
			if (res != 1) {
				FUNC2(1, "error writing to stdout");
				break;
			}
		}
		break;
	case 4:
		dd = (uint32_t *)(uintptr_t)((uintptr_t)pbm.pbm_map_base +
		    pbm.pbm_bar_off + start * width);
		for (a = 0; a < count; a += width, dd++) {
			res = FUNC4(dd, width, 1, stdout);
			if (res != 1) {
				FUNC2(1, "error writing to stdout");
				break;
			}
		}
		break;
	case 8:
		dx = (uint64_t *)(uintptr_t)((uintptr_t)pbm.pbm_map_base +
		    pbm.pbm_bar_off + start * width);
		for (a = 0; a < count; a += width, dx++) {
			res = FUNC4(dx, width, 1, stdout);
			if (res != 1) {
				FUNC2(1, "error writing to stdout");
				break;
			}
		}
		break;
	default:
		FUNC2(1, "invalid access width");
	}

	FUNC7((void *)pbm.pbm_map_base, pbm.pbm_map_length);
	FUNC0(fd);
}