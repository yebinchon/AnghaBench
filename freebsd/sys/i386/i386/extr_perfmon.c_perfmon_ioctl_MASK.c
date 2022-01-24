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
typedef  int uint64_t ;
typedef  int u_long ;
struct thread {int dummy; } ;
struct pmc_tstamp {int pmct_rate; int /*<<< orphan*/  pmct_value; } ;
struct pmc_data {int /*<<< orphan*/  pmcd_value; int /*<<< orphan*/  pmcd_num; } ;
struct pmc {int pmc_num; int /*<<< orphan*/  pmc_val; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
 int EPERM ; 
 int FWRITE ; 
#define  PMIOGET 134 
#define  PMIOREAD 133 
#define  PMIORESET 132 
#define  PMIOSETUP 131 
#define  PMIOSTART 130 
#define  PMIOSTOP 129 
#define  PMIOTSTAMP 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  tsc_freq ; 
 int writerpmc ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, u_long cmd, caddr_t param, int flags, struct thread *td)
{
	struct pmc *pmc;
	struct pmc_data *pmcd;
	struct pmc_tstamp *pmct;
	uint64_t freq;
	int *ip;
	int rv;

	switch(cmd) {
	case PMIOSETUP:
		if (!(flags & FWRITE))
			return EPERM;
		pmc = (struct pmc *)param;

		rv = FUNC4(pmc->pmc_num, pmc->pmc_val);
		if (!rv) {
			writerpmc |= (1 << pmc->pmc_num);
		}
		break;

	case PMIOGET:
		pmc = (struct pmc *)param;
		rv = FUNC1(pmc->pmc_num, &pmc->pmc_val);
		break;

	case PMIOSTART:
		if (!(flags & FWRITE))
			return EPERM;

		ip = (int *)param;
		rv = FUNC5(*ip);
		break;

	case PMIOSTOP:
		if (!(flags & FWRITE))
			return EPERM;

		ip = (int *)param;
		rv = FUNC6(*ip);
		break;

	case PMIORESET:
		if (!(flags & FWRITE))
			return EPERM;

		ip = (int *)param;
		rv = FUNC3(*ip);
		break;

	case PMIOREAD:
		pmcd = (struct pmc_data *)param;
		rv = FUNC2(pmcd->pmcd_num, &pmcd->pmcd_value);
		break;

	case PMIOTSTAMP:
		freq = FUNC0(&tsc_freq);
		if (freq == 0) {
			rv = ENOTTY;
			break;
		}
		pmct = (struct pmc_tstamp *)param;
		/* XXX interface loses precision. */
		pmct->pmct_rate = freq / 1000000;
		pmct->pmct_value = FUNC7();
		rv = 0;
		break;
	default:
		rv = ENOTTY;
	}

	return rv;
}