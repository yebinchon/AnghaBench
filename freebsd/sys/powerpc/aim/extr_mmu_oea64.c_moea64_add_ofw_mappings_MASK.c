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
typedef  scalar_t__ vm_offset_t ;
struct pvo_entry {int dummy; } ;
struct ofw_map {int om_va; int om_len; int om_pa; int om_mode; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int /*<<< orphan*/  cell_t ;
typedef  int /*<<< orphan*/  acells ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 scalar_t__ LPTE_M ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int*,size_t) ; 
 int PAGE_SIZE ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC10 (struct ofw_map*,size_t) ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct pvo_entry* FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  om_cmp ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct ofw_map*,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(mmu_t mmup, phandle_t mmu, size_t sz)
{
	struct ofw_map	translations[sz/(4*sizeof(cell_t))]; /*>= 4 cells per */
	pcell_t		acells, trans_cells[sz/sizeof(cell_t)];
	struct pvo_entry *pvo;
	register_t	msr;
	vm_offset_t	off;
	vm_paddr_t	pa_base;
	int		i, j;

	FUNC10(translations, sz);
	FUNC6(FUNC5("/"), "#address-cells", &acells,
	    sizeof(acells));
	if (FUNC6(mmu, "translations", trans_cells, sz) == -1)
		FUNC14("moea64_bootstrap: can't get ofw translations");

	FUNC0(KTR_PMAP, "moea64_add_ofw_mappings: translations");
	sz /= sizeof(cell_t);
	for (i = 0, j = 0; i < sz; j++) {
		translations[j].om_va = trans_cells[i++];
		translations[j].om_len = trans_cells[i++];
		translations[j].om_pa = trans_cells[i++];
		if (acells == 2) {
			translations[j].om_pa <<= 32;
			translations[j].om_pa |= trans_cells[i++];
		}
		translations[j].om_mode = trans_cells[i++];
	}
	FUNC4(i == sz, ("Translations map has incorrect cell count (%d/%zd)",
	    i, sz));

	sz = j;
	FUNC15(translations, sz, sizeof (*translations), om_cmp);

	for (i = 0; i < sz; i++) {
		pa_base = translations[i].om_pa;
	      #ifndef __powerpc64__
		if ((translations[i].om_pa >> 32) != 0)
			FUNC14("OFW translations above 32-bit boundary!");
	      #endif

		if (pa_base % PAGE_SIZE)
			FUNC14("OFW translation not page-aligned (phys)!");
		if (translations[i].om_va % PAGE_SIZE)
			FUNC14("OFW translation not page-aligned (virt)!");

		FUNC1(KTR_PMAP, "translation: pa=%#zx va=%#x len=%#x",
		    pa_base, translations[i].om_va, translations[i].om_len);

		/* Now enter the pages for this mapping */

		FUNC2(msr);
		for (off = 0; off < translations[i].om_len; off += PAGE_SIZE) {
			/* If this address is direct-mapped, skip remapping */
			if (hw_direct_map &&
			    translations[i].om_va == FUNC7(pa_base) &&
			    FUNC11(pa_base + off, VM_MEMATTR_DEFAULT)
 			    == LPTE_M)
				continue;

			FUNC8(kernel_pmap);
			pvo = FUNC13(kernel_pmap,
			    translations[i].om_va + off);
			FUNC9(kernel_pmap);
			if (pvo != NULL)
				continue;

			FUNC12(mmup, translations[i].om_va + off,
			    pa_base + off);
		}
		FUNC3(msr);
	}
}