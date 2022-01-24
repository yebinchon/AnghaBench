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
typedef  int uint32_t ;
struct resource {int dummy; } ;
struct aic7770_identity {int dummy; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_EISA_IOSIZE ; 
 int AHC_EISA_SLOT_OFFSET ; 
 int AHC_EISA_SLOT_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ISA_ORDER_SPECULATIVE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 struct aic7770_identity* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static void
FUNC9(driver_t *driver, device_t parent)
{
	int slot;
	int max_slot;

	max_slot = 14;
	for (slot = 0; slot <= max_slot; slot++) {
		struct aic7770_identity *entry;
		bus_space_tag_t	    tag;
		bus_space_handle_t  bsh;
		struct resource	   *regs;
		uint32_t	    iobase;
		int		    rid;

		rid = 0;
		iobase = (slot * AHC_EISA_SLOT_SIZE) + AHC_EISA_SLOT_OFFSET;
		regs = FUNC2(parent, SYS_RES_IOPORT, &rid,
					  iobase, iobase, AHC_EISA_IOSIZE,
					  RF_ACTIVE);
		if (regs == NULL) {
			if (bootverbose)
				FUNC6("ahc_isa_identify %d: ioport 0x%x "
				       "alloc failed\n", slot, iobase);
			continue;
		}

		tag = FUNC8(regs);
		bsh = FUNC7(regs);

		entry = FUNC1(tag, bsh);
		if (entry != NULL) {
			device_t child;

			child = FUNC0(parent, ISA_ORDER_SPECULATIVE,
					      "ahc", -1);
			if (child != NULL) {
				FUNC5(child, driver);
				FUNC4(child, SYS_RES_IOPORT,
						 0, iobase, AHC_EISA_IOSIZE);
			}
		}
		FUNC3(parent, SYS_RES_IOPORT, rid, regs);
	}
}