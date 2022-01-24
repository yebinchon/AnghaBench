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
struct ahc_tmode_tstate {int init_level; struct ahc_tmode_tstate* seep_config; struct ahc_tmode_tstate* name; struct ahc_tmode_tstate* black_hole; int /*<<< orphan*/  path; struct ahc_tmode_tstate** enabled_luns; struct ahc_tmode_tstate** enabled_targets; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  shared_data_dmat; int /*<<< orphan*/  shared_data_dmamap; int /*<<< orphan*/  qoutfifo; } ;
struct ahc_tmode_lstate {int init_level; struct ahc_tmode_lstate* seep_config; struct ahc_tmode_lstate* name; struct ahc_tmode_lstate* black_hole; int /*<<< orphan*/  path; struct ahc_tmode_lstate** enabled_luns; struct ahc_tmode_lstate** enabled_targets; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  shared_data_dmat; int /*<<< orphan*/  shared_data_dmamap; int /*<<< orphan*/  qoutfifo; } ;
struct ahc_softc {int init_level; struct ahc_softc* seep_config; struct ahc_softc* name; struct ahc_softc* black_hole; int /*<<< orphan*/  path; struct ahc_softc** enabled_luns; struct ahc_softc** enabled_targets; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  shared_data_dmat; int /*<<< orphan*/  shared_data_dmamap; int /*<<< orphan*/  qoutfifo; } ;

/* Variables and functions */
 int AHC_NUM_LUNS ; 
 int AHC_NUM_TARGETS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_tmode_tstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_tmode_tstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_tmode_tstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_tmode_tstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_tmode_tstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_tmode_tstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_tmode_tstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_tmode_tstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct ahc_softc *ahc)
{
	int i;

	FUNC3(ahc);
	switch (ahc->init_level) {
	default:
	case 5:
		FUNC2(ahc);
		/* FALLTHROUGH */
	case 4:
		FUNC5(ahc, ahc->shared_data_dmat,
				  ahc->shared_data_dmamap);
		/* FALLTHROUGH */
	case 3:
		FUNC6(ahc, ahc->shared_data_dmat, ahc->qoutfifo,
				ahc->shared_data_dmamap);
		/* FALLTHROUGH */
	case 2:
		FUNC4(ahc, ahc->shared_data_dmat);
	case 1:
#ifndef __linux__
		aic_dma_tag_destroy(ahc, ahc->buffer_dmat);
#endif
		break;
	case 0:
		break;
	}

#ifndef __linux__
	aic_dma_tag_destroy(ahc, ahc->parent_dmat);
#endif
	FUNC1(ahc);
	FUNC0(ahc);
	for (i = 0; i < AHC_NUM_TARGETS; i++) {
		struct ahc_tmode_tstate *tstate;

		tstate = ahc->enabled_targets[i];
		if (tstate != NULL) {
#ifdef AHC_TARGET_MODE
			int j;

			for (j = 0; j < AHC_NUM_LUNS; j++) {
				struct ahc_tmode_lstate *lstate;

				lstate = tstate->enabled_luns[j];
				if (lstate != NULL) {
					xpt_free_path(lstate->path);
					free(lstate, M_DEVBUF);
				}
			}
#endif
			FUNC7(tstate, M_DEVBUF);
		}
	}
#ifdef AHC_TARGET_MODE
	if (ahc->black_hole != NULL) {
		xpt_free_path(ahc->black_hole->path);
		free(ahc->black_hole, M_DEVBUF);
	}
#endif
	if (ahc->name != NULL)
		FUNC7(ahc->name, M_DEVBUF);
	if (ahc->seep_config != NULL)
		FUNC7(ahc->seep_config, M_DEVBUF);
#ifndef __FreeBSD__
	FUNC7(ahc, M_DEVBUF);
#endif
	return;
}