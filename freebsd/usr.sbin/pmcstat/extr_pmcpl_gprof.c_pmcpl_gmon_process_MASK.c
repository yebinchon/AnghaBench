#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct pmcstat_process {int dummy; } ;
struct pmcstat_pmcrecord {int /*<<< orphan*/  pr_pmcid; } ;
struct pmcstat_pcmap {scalar_t__ ppm_lowpc; scalar_t__ ppm_highpc; struct pmcstat_image* ppm_image; } ;
struct pmcstat_image {scalar_t__ pi_type; scalar_t__ pi_end; scalar_t__ pi_start; int /*<<< orphan*/  pi_gmlist; } ;
struct pmcstat_gmonfile {int pgf_nbuckets; int pgf_ndatabytes; int pgf_overflow; scalar_t__ pgf_nsamples; int /*<<< orphan*/ * pgf_gmondata; int /*<<< orphan*/ * pgf_file; int /*<<< orphan*/  pgf_pmcid; int /*<<< orphan*/  pgf_name; } ;
struct gmonhdr {int dummy; } ;
typedef  int /*<<< orphan*/  pmc_id_t ;
typedef  scalar_t__ WIDEHISTCOUNTER ;
struct TYPE_5__ {int pa_flags; int /*<<< orphan*/  pa_samplesdir; } ;
struct TYPE_4__ {int /*<<< orphan*/  ps_samples_indeterminable; int /*<<< orphan*/  ps_samples_unknown_offset; } ;
typedef  scalar_t__ HISTCOUNTER ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int FLAG_DO_WIDE_GPROF_HC ; 
 scalar_t__ FUNCTION_ALIGNMENT ; 
 scalar_t__ HISTCOUNTER_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pmcstat_gmonfile*,int /*<<< orphan*/ ) ; 
 scalar_t__ PMCSTAT_IMAGE_INDETERMINABLE ; 
 scalar_t__ PMCSTAT_IMAGE_UNKNOWN ; 
 scalar_t__ WIDEHISTCOUNTER_MAX ; 
 TYPE_2__ args ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pmcstat_gmonfile* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int hc_sz ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  pgf_next ; 
 int /*<<< orphan*/  FUNC5 (struct pmcstat_gmonfile*,struct pmcstat_image*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pmcstat_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pmcstat_gmonfile*) ; 
 int /*<<< orphan*/  FUNC8 (struct pmcstat_image*,TYPE_2__*) ; 
 struct pmcstat_gmonfile* FUNC9 (struct pmcstat_image*,int /*<<< orphan*/ ) ; 
 struct pmcstat_process* pmcstat_kernproc ; 
 struct pmcstat_pcmap* FUNC10 (struct pmcstat_process*,scalar_t__) ; 
 TYPE_1__ pmcstat_stats ; 

void
FUNC11(struct pmcstat_process *pp, struct pmcstat_pmcrecord *pmcr,
    uint32_t nsamples, uintfptr_t *cc, int usermode, uint32_t cpu)
{
	struct pmcstat_pcmap *map;
	struct pmcstat_image *image;
	struct pmcstat_gmonfile *pgf;
	uintfptr_t bucket;
	HISTCOUNTER *hc;
	WIDEHISTCOUNTER *whc;
	pmc_id_t pmcid;

	(void) nsamples; (void) usermode; (void) cpu;

	map = FUNC10(usermode ? pp : pmcstat_kernproc, cc[0]);
	if (map == NULL) {
		/* Unknown offset. */
		pmcstat_stats.ps_samples_unknown_offset++;
		return;
	}

	FUNC1(cc[0] >= map->ppm_lowpc && cc[0] < map->ppm_highpc);

	image = map->ppm_image;
	pmcid = pmcr->pr_pmcid;

	/*
	 * If this is the first time we are seeing a sample for
	 * this executable image, try determine its parameters.
	 */
	if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
		FUNC8(image, &args);

	FUNC1(image->pi_type != PMCSTAT_IMAGE_UNKNOWN);

	/* Ignore samples in images that we know nothing about. */
	if (image->pi_type == PMCSTAT_IMAGE_INDETERMINABLE) {
		pmcstat_stats.ps_samples_indeterminable++;
		return;
	}

	/*
	 * Find the gmon file corresponding to 'pmcid', creating it if
	 * needed.
	 */
	pgf = FUNC9(image, pmcid);
	if (pgf == NULL) {
		if (hc_sz == 0) {
			/* Determine the correct histcounter size. */
			if (args.pa_flags & FLAG_DO_WIDE_GPROF_HC)
				hc_sz = sizeof(WIDEHISTCOUNTER);
			else
				hc_sz = sizeof(HISTCOUNTER);
		}

		if ((pgf = FUNC2(1, sizeof(*pgf))) == NULL)
			FUNC3(EX_OSERR, "ERROR:");

		pgf->pgf_gmondata = NULL;	/* mark as unmapped */
		pgf->pgf_name = FUNC6(args.pa_samplesdir,
		    image, pmcid);
		pgf->pgf_pmcid = pmcid;
		FUNC1(image->pi_end > image->pi_start);
		pgf->pgf_nbuckets = FUNC4(image->pi_end - image->pi_start,
		    FUNCTION_ALIGNMENT);	/* see <machine/profile.h> */
		pgf->pgf_ndatabytes = sizeof(struct gmonhdr) +
		    pgf->pgf_nbuckets * hc_sz;
		pgf->pgf_nsamples = 0;
		pgf->pgf_file = NULL;

		FUNC5(pgf, image);

		FUNC0(&image->pi_gmlist, pgf, pgf_next);
	}

	/*
	 * Map the gmon file in if needed.  It may have been mapped
	 * out under memory pressure.
	 */
	if (pgf->pgf_gmondata == NULL)
		FUNC7(pgf);

	FUNC1(pgf->pgf_gmondata != NULL);

	/*
	 *
	 */

	bucket = (cc[0] - map->ppm_lowpc) / FUNCTION_ALIGNMENT;

	FUNC1(bucket < pgf->pgf_nbuckets);

	if (args.pa_flags & FLAG_DO_WIDE_GPROF_HC) {
		whc = (WIDEHISTCOUNTER *) ((uintptr_t) pgf->pgf_gmondata +
		    sizeof(struct gmonhdr));

		/* saturating add */
		if (whc[bucket] < WIDEHISTCOUNTER_MAX)
			whc[bucket]++;
		else /* mark that an overflow occurred */
			pgf->pgf_overflow = 1;
	} else {
		hc = (HISTCOUNTER *) ((uintptr_t) pgf->pgf_gmondata +
		    sizeof(struct gmonhdr));

		/* saturating add */
		if (hc[bucket] < HISTCOUNTER_MAX)
			hc[bucket]++;
		else /* mark that an overflow occurred */
			pgf->pgf_overflow = 1;
	}

	pgf->pgf_nsamples++;
}