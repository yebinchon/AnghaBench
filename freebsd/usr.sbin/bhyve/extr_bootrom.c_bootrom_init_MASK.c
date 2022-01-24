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
typedef  int vm_paddr_t ;
struct vmctx {int dummy; } ;
struct stat {int st_size; } ;
typedef  int ssize_t ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int MAX_BOOTROM_SIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int /*<<< orphan*/  VM_BOOTROM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct vmctx*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (struct vmctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int
FUNC8(struct vmctx *ctx, const char *romfile)
{
	struct stat sbuf;
	vm_paddr_t gpa;
	ssize_t rlen;
	char *ptr;
	int fd, i, rv, prot;

	rv = -1;
	fd = FUNC3(romfile, O_RDONLY);
	if (fd < 0) {
		FUNC1(stderr, "Error opening bootrom \"%s\": %s\n",
		    romfile, FUNC5(errno));
		goto done;
	}

        if (FUNC2(fd, &sbuf) < 0) {
		FUNC1(stderr, "Could not fstat bootrom file \"%s\": %s\n",
		    romfile, FUNC5(errno));
		goto done;
        }

	/*
	 * Limit bootrom size to 16MB so it doesn't encroach into reserved
	 * MMIO space (e.g. APIC, HPET, MSI).
	 */
	if (sbuf.st_size > MAX_BOOTROM_SIZE || sbuf.st_size < PAGE_SIZE) {
		FUNC1(stderr, "Invalid bootrom size %d\n", sbuf.st_size);
		goto done;
	}

	if (sbuf.st_size & PAGE_MASK) {
		FUNC1(stderr, "Bootrom size %d is not a multiple of the "
		    "page size\n", sbuf.st_size);
		goto done;
	}

	ptr = FUNC6(ctx, VM_BOOTROM, "bootrom", sbuf.st_size);
	if (ptr == MAP_FAILED)
		goto done;

	/* Map the bootrom into the guest address space */
	prot = PROT_READ | PROT_EXEC;
	gpa = (1ULL << 32) - sbuf.st_size;
	if (FUNC7(ctx, gpa, VM_BOOTROM, 0, sbuf.st_size, prot) != 0)
		goto done;

	/* Read 'romfile' into the guest address space */
	for (i = 0; i < sbuf.st_size / PAGE_SIZE; i++) {
		rlen = FUNC4(fd, ptr + i * PAGE_SIZE, PAGE_SIZE);
		if (rlen != PAGE_SIZE) {
			FUNC1(stderr, "Incomplete read of page %d of bootrom "
			    "file %s: %zd bytes\n", i, romfile, rlen);
			goto done;
		}
	}
	rv = 0;
done:
	if (fd >= 0)
		FUNC0(fd);
	return (rv);
}