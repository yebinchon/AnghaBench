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
typedef  scalar_t__ vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
struct vmctx {int dummy; } ;
typedef  int /*<<< orphan*/  numbuf ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_NOSPACE ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SPECNAMELEN ; 
 int VM_MEMMAP_F_IOMMU ; 
 int VM_MEMMAP_F_WIRED ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vmctx*,int,size_t*,char*,int) ; 
 int FUNC3 (struct vmctx*,scalar_t__*,int*,int /*<<< orphan*/ *,size_t*,int*,int*) ; 

__attribute__((used)) static int
FUNC4(struct vmctx *ctx)
{
	char name[SPECNAMELEN + 1], numbuf[8];
	vm_ooffset_t segoff;
	vm_paddr_t gpa;
	size_t maplen, seglen;
	int error, flags, prot, segid, delim;

	FUNC1("Address     Length      Segment     Offset      ");
	FUNC1("Prot  Flags\n");

	gpa = 0;
	while (1) {
		error = FUNC3(ctx, &gpa, &segid, &segoff, &maplen,
		    &prot, &flags);
		if (error)
			return (errno == ENOENT ? 0 : error);

		error = FUNC2(ctx, segid, &seglen, name, sizeof(name));
		if (error)
			return (error);

		FUNC1("%-12lX", gpa);
		FUNC0(numbuf, sizeof(numbuf), maplen, "B",
		    HN_AUTOSCALE, HN_NOSPACE);
		FUNC1("%-12s", numbuf);

		FUNC1("%-12s", name[0] ? name : "sysmem");
		FUNC1("%-12lX", segoff);
		FUNC1("%c%c%c   ", prot & PROT_READ ? 'R' : '-',
		    prot & PROT_WRITE ? 'W' : '-',
		    prot & PROT_EXEC ? 'X' : '-');

		delim = '\0';
		if (flags & VM_MEMMAP_F_WIRED) {
			FUNC1("%cwired", delim);
			delim = '/';
		}
		if (flags & VM_MEMMAP_F_IOMMU) {
			FUNC1("%ciommu", delim);
			delim = '/';
		}
		FUNC1("\n");

		gpa += maplen;
	}
}