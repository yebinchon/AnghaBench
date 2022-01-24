#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {char* vendor; int (* load ) (int /*<<< orphan*/ *,int,void**,void**) ;int /*<<< orphan*/ * (* match ) (int /*<<< orphan*/ *,size_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MODINFO_TYPE ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ NO_MATCH ; 
 uintptr_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * early_ucode_data ; 
 TYPE_1__* loaders ; 
 int /*<<< orphan*/ * FUNC2 (uintptr_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 size_t FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,size_t*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,void**,void**) ; 
 int /*<<< orphan*/ * ucode_data ; 
 scalar_t__ ucode_error ; 
 TYPE_1__* ucode_loader ; 
 void* ucode_nrev ; 
 void* ucode_orev ; 
 int /*<<< orphan*/  FUNC12 (uintptr_t,size_t) ; 

size_t
FUNC13(uintptr_t free)
{
	union {
		uint32_t regs[4];
		char vendor[13];
	} cpuid;
	uint8_t *addr, *fileaddr, *match;
	char *type;
	uint64_t nrev, orev;
	caddr_t file;
	size_t i, len;
	int error;

	FUNC0(free % PAGE_SIZE == 0, ("unaligned boundary %p", (void *)free));

	FUNC1(0, cpuid.regs);
	cpuid.regs[0] = cpuid.regs[1];
	cpuid.regs[1] = cpuid.regs[3];
	cpuid.vendor[12] = '\0';
	for (i = 0; i < FUNC4(loaders); i++)
		if (FUNC9(cpuid.vendor, loaders[i].vendor) == 0) {
			ucode_loader = &loaders[i];
			break;
		}
	if (ucode_loader == NULL)
		return (0);

	file = 0;
	fileaddr = match = NULL;
	for (;;) {
		file = FUNC8(file);
		if (file == 0)
			break;
		type = (char *)FUNC7(file, MODINFO_TYPE);
		if (type == NULL || FUNC9(type, "cpu_microcode") != 0)
			continue;

		fileaddr = FUNC5(file);
		len = FUNC6(file);
		match = ucode_loader->match(fileaddr, &len);
		if (match != NULL) {
			addr = FUNC2(free, len);
			/* We can't use memcpy() before ifunc resolution. */
			FUNC3(addr, match, len);
			match = addr;

			error = ucode_loader->load(match, false, &nrev, &orev);
			if (error == 0) {
				ucode_data = early_ucode_data = match;
				ucode_nrev = nrev;
				ucode_orev = orev;
				return (len);
			}
			FUNC12(free, len);
		}
	}
	if (fileaddr != NULL && ucode_error == NO_ERROR)
		ucode_error = NO_MATCH;
	return (0);
}