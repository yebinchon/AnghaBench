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
struct ahd_softc {int bugs; TYPE_1__* platform_data; void** bshs; void** tags; int /*<<< orphan*/  dev_softc; } ;
struct TYPE_2__ {int* regs_res_type; int* regs_res_id; struct resource** regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int AHD_PCIX_MMAPIO_BUG ; 
 int AHD_PCI_IOADDR0 ; 
 int AHD_PCI_IOADDR1 ; 
 int AHD_PCI_MEMADDR ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC6 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC8 (void*,void*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 void* FUNC13 (struct resource*) ; 
 void* FUNC14 (struct resource*) ; 

int
FUNC15(struct ahd_softc *ahd)
{
	struct	resource *regs;
	struct	resource *regs2;
	int	regs_type;
	int	regs_id;
	int	regs_id2;
	int	allow_memio;

	regs = NULL;
	regs2 = NULL;
	regs_type = 0;
	regs_id = 0;

	/* Retrieve the per-device 'allow_memio' hint */
	if (FUNC12(FUNC9(ahd->dev_softc),
			       FUNC10(ahd->dev_softc),
			       "allow_memio", &allow_memio) != 0) {
		if (bootverbose)
			FUNC11(ahd->dev_softc,
				      "Defaulting to MEMIO on\n");
		allow_memio = 1;
	}

	if ((ahd->bugs & AHD_PCIX_MMAPIO_BUG) == 0
	 && allow_memio != 0) {

		regs_type = SYS_RES_MEMORY;
		regs_id = AHD_PCI_MEMADDR;
		regs = FUNC6(ahd->dev_softc, regs_type,
					      &regs_id, RF_ACTIVE);
		if (regs != NULL) {
			int error;

			ahd->tags[0] = FUNC14(regs);
			ahd->bshs[0] = FUNC13(regs);
			ahd->tags[1] = ahd->tags[0];
			error = FUNC8(ahd->tags[0], ahd->bshs[0],
						    /*offset*/0x100,
						    /*size*/0x100,
						    &ahd->bshs[1]);
			/*
			 * Do a quick test to see if memory mapped
			 * I/O is functioning correctly.
			 */
			if (error != 0
			 || FUNC2(ahd) != 0) {
				FUNC11(ahd->dev_softc,
				       "PCI Device %d:%d:%d failed memory "
				       "mapped test.  Using PIO.\n",
				       FUNC3(ahd->dev_softc),
				       FUNC5(ahd->dev_softc),
				       FUNC4(ahd->dev_softc));
				FUNC7(ahd->dev_softc, regs_type,
						     regs_id, regs);
				regs = NULL;
				FUNC0(ahd);
			}
		}
	}
	if (regs == NULL) {
		regs_type = SYS_RES_IOPORT;
		regs_id = AHD_PCI_IOADDR0;
		regs = FUNC6(ahd->dev_softc, regs_type,
					      &regs_id, RF_ACTIVE);
		if (regs == NULL) {
			FUNC11(ahd->dev_softc,
				      "can't allocate register resources\n");
			FUNC1(ahd);
			return (ENOMEM);
		}
		ahd->tags[0] = FUNC14(regs);
		ahd->bshs[0] = FUNC13(regs);

		/* And now the second BAR */
		regs_id2 = AHD_PCI_IOADDR1;
		regs2 = FUNC6(ahd->dev_softc, regs_type,
					       &regs_id2, RF_ACTIVE);
		if (regs2 == NULL) {
			FUNC11(ahd->dev_softc,
				      "can't allocate register resources\n");
			FUNC1(ahd);
			return (ENOMEM);
		}
		ahd->tags[1] = FUNC14(regs2);
		ahd->bshs[1] = FUNC13(regs2);
		ahd->platform_data->regs_res_type[1] = regs_type;
		ahd->platform_data->regs_res_id[1] = regs_id2;
		ahd->platform_data->regs[1] = regs2;
	}
	ahd->platform_data->regs_res_type[0] = regs_type;
	ahd->platform_data->regs_res_id[0] = regs_id;
	ahd->platform_data->regs[0] = regs;
	return (0);
}