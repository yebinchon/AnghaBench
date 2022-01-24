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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ th_sig; } ;
struct efi_systbl {scalar_t__ st_cfgtbl; scalar_t__ st_rt; TYPE_1__ st_hdr; } ;
struct efi_rt {scalar_t__ rt_gettime; } ;
struct efi_md {int dummy; } ;
struct efi_map_header {int descriptor_size; int memory_size; } ;
struct efi_cfgtbl {int dummy; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 scalar_t__ EFI_SYSTBL_SIG ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int MODINFOMD_EFI_MAP ; 
 int MODINFO_METADATA ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ SHUTDOWN_PRI_LAST ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 scalar_t__ bootverbose ; 
 struct efi_cfgtbl* efi_cfgtbl ; 
 int /*<<< orphan*/  FUNC2 (struct efi_md*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct efi_md*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efi_lock ; 
 scalar_t__ FUNC5 (uintptr_t) ; 
 struct efi_rt* efi_runtime ; 
 int /*<<< orphan*/  efi_shutdown_final ; 
 int /*<<< orphan*/  efi_shutdown_tag ; 
 struct efi_systbl* efi_systbl ; 
 scalar_t__ efi_systbl_phys ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  shutdown_final ; 

__attribute__((used)) static int
FUNC10(void)
{
	struct efi_map_header *efihdr;
	struct efi_md *map;
	struct efi_rt *rtdm;
	caddr_t kmdp;
	size_t efisz;
	int ndesc, rt_disabled;

	rt_disabled = 0;
	FUNC1("efi.rt.disabled", &rt_disabled);
	if (rt_disabled == 1)
		return (0);
	FUNC6(&efi_lock, "efi", NULL, MTX_DEF);

	if (efi_systbl_phys == 0) {
		if (bootverbose)
			FUNC9("EFI systbl not available\n");
		return (0);
	}

	efi_systbl = (struct efi_systbl *)FUNC5(efi_systbl_phys);
	if (efi_systbl == NULL || efi_systbl->st_hdr.th_sig != EFI_SYSTBL_SIG) {
		efi_systbl = NULL;
		if (bootverbose)
			FUNC9("EFI systbl signature invalid\n");
		return (0);
	}
	efi_cfgtbl = (efi_systbl->st_cfgtbl == 0) ? NULL :
	    (struct efi_cfgtbl *)efi_systbl->st_cfgtbl;
	if (efi_cfgtbl == NULL) {
		if (bootverbose)
			FUNC9("EFI config table is not present\n");
	}

	kmdp = FUNC7("elf kernel");
	if (kmdp == NULL)
		kmdp = FUNC7("elf64 kernel");
	efihdr = (struct efi_map_header *)FUNC8(kmdp,
	    MODINFO_METADATA | MODINFOMD_EFI_MAP);
	if (efihdr == NULL) {
		if (bootverbose)
			FUNC9("EFI map is not present\n");
		return (0);
	}
	efisz = (sizeof(struct efi_map_header) + 0xf) & ~0xf;
	map = (struct efi_md *)((uint8_t *)efihdr + efisz);
	if (efihdr->descriptor_size == 0)
		return (ENOMEM);

	ndesc = efihdr->memory_size / efihdr->descriptor_size;
	if (!FUNC2(map, ndesc, efihdr->descriptor_size)) {
		if (bootverbose)
			FUNC9("EFI cannot create runtime map\n");
		return (ENOMEM);
	}

	efi_runtime = (efi_systbl->st_rt == 0) ? NULL :
	    (struct efi_rt *)efi_systbl->st_rt;
	if (efi_runtime == NULL) {
		if (bootverbose)
			FUNC9("EFI runtime services table is not present\n");
		FUNC3();
		return (ENXIO);
	}

#if defined(__aarch64__) || defined(__amd64__)
	/*
	 * Some UEFI implementations have multiple implementations of the
	 * RS->GetTime function. They switch from one we can only use early
	 * in the boot process to one valid as a RunTime service only when we
	 * call RS->SetVirtualAddressMap. As this is not always the case, e.g.
	 * with an old loader.efi, check if the RS->GetTime function is within
	 * the EFI map, and fail to attach if not.
	 */
	rtdm = (struct efi_rt *)FUNC5((uintptr_t)efi_runtime);
	if (rtdm == NULL || !FUNC4(map, ndesc, efihdr->descriptor_size,
	    (vm_offset_t)rtdm->rt_gettime)) {
		if (bootverbose)
			FUNC9(
			 "EFI runtime services table has an invalid pointer\n");
		efi_runtime = NULL;
		FUNC3();
		return (ENXIO);
	}
#endif

	/*
	 * We use SHUTDOWN_PRI_LAST - 1 to trigger after IPMI, but before ACPI.
	 */
	efi_shutdown_tag = FUNC0(shutdown_final,
	    efi_shutdown_final, NULL, SHUTDOWN_PRI_LAST - 1);

	return (0);
}