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
struct resource {int dummy; } ;
struct ahc_softc {TYPE_1__* platform_data; int /*<<< orphan*/  dev_softc; void* bsh; void* tag; } ;
struct TYPE_2__ {int regs_res_type; int regs_res_id; struct resource* regs; } ;

/* Variables and functions */
 int AHC_PCI_IOADDR ; 
 int AHC_PCI_MEMADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ FUNC0 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC4 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 void* FUNC11 (struct resource*) ; 
 void* FUNC12 (struct resource*) ; 

int
FUNC13(struct ahc_softc *ahc)
{
	struct	resource *regs;
	int	regs_type;
	int	regs_id;
	int	allow_memio;

	regs = NULL;
	regs_type = 0;
	regs_id = 0;

	/* Retrieve the per-device 'allow_memio' hint */
	if (FUNC10(FUNC6(ahc->dev_softc),
			       FUNC7(ahc->dev_softc),
			       "allow_memio", &allow_memio) != 0) {
		if (bootverbose)
			FUNC8(ahc->dev_softc, "Defaulting to MEMIO ");
#ifdef AHC_ALLOW_MEMIO
		if (bootverbose)
			printf("on\n");
		allow_memio = 1;
#else
		if (bootverbose)
			FUNC9("off\n");
		allow_memio = 0;
#endif
	}

	if (allow_memio != 0) {

		regs_type = SYS_RES_MEMORY;
		regs_id = AHC_PCI_MEMADDR;
		regs = FUNC4(ahc->dev_softc, regs_type,
					      &regs_id, RF_ACTIVE);
		if (regs != NULL) {
			ahc->tag = FUNC12(regs);
			ahc->bsh = FUNC11(regs);

			/*
			 * Do a quick test to see if memory mapped
			 * I/O is functioning correctly.
			 */
			if (FUNC0(ahc) != 0) {
				FUNC8(ahc->dev_softc,
				       "PCI Device %d:%d:%d failed memory "
				       "mapped test.  Using PIO.\n",
				       FUNC1(ahc->dev_softc),
				       FUNC3(ahc->dev_softc),
				       FUNC2(ahc->dev_softc));
				FUNC5(ahc->dev_softc, regs_type,
						     regs_id, regs);
				regs = NULL;
			}
		}
	}

	if (regs == NULL) {
		regs_type = SYS_RES_IOPORT;
		regs_id = AHC_PCI_IOADDR;
		regs = FUNC4(ahc->dev_softc, regs_type,
					      &regs_id, RF_ACTIVE);
		if (regs != NULL) {
			ahc->tag = FUNC12(regs);
			ahc->bsh = FUNC11(regs);
			if (FUNC0(ahc) != 0) {
				FUNC8(ahc->dev_softc,
				       "PCI Device %d:%d:%d failed I/O "
				       "mapped test.\n",
				       FUNC1(ahc->dev_softc),
				       FUNC3(ahc->dev_softc),
				       FUNC2(ahc->dev_softc));
				FUNC5(ahc->dev_softc, regs_type,
						     regs_id, regs);
				regs = NULL;
			}
		}
	}
	if (regs == NULL) {
		FUNC8(ahc->dev_softc,
			      "can't allocate register resources\n");
		return (ENOMEM);
	}
	ahc->platform_data->regs_res_type = regs_type;
	ahc->platform_data->regs_res_id = regs_id;
	ahc->platform_data->regs = regs;
	return (0);
}