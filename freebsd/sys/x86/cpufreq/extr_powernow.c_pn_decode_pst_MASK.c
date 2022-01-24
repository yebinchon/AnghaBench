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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ u_long ;
typedef  int u_int ;
struct pst_header {int cpuid; int maxfid; int startvid; int numpstates; int fsb; } ;
struct psb_header {int version; int settlingtime; int /*<<< orphan*/  res1; } ;
struct pn_softc {int pn_type; int vst; int sgtc; int fsb; int powernow_max_states; int /*<<< orphan*/  low; int /*<<< orphan*/  mvs; int /*<<< orphan*/  irt; int /*<<< orphan*/  rvo; int /*<<< orphan*/  errata; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  A0_ERRATA ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MSR_AMDK7_FIDVID_STATUS ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  PN7_TYPE 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
#define  PN8_TYPE 128 
 int /*<<< orphan*/  PSB_LEN ; 
 int /*<<< orphan*/  PSB_OFF ; 
 int /*<<< orphan*/  PSB_SIG ; 
 int /*<<< orphan*/  PSB_START ; 
 int /*<<< orphan*/  PSB_STEP ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (struct pn_softc*,int /*<<< orphan*/ *,int) ; 
 struct pn_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	int maxpst;
	struct pn_softc *sc;
	u_int cpuid, maxfid, startvid;
	u_long sig;
	struct psb_header *psb;
	uint8_t *p;
	u_int regs[4];
	uint64_t status;

	sc = FUNC13(dev);

	FUNC15(0x80000001, regs);
	cpuid = regs[0];

	if ((cpuid & 0xfff) == 0x760)
		sc->errata |= A0_ERRATA;

	status = FUNC16(MSR_AMDK7_FIDVID_STATUS);

	switch (sc->pn_type) {
	case PN7_TYPE:
		maxfid = FUNC1(status);
		startvid = FUNC2(status);
		break;
	case PN8_TYPE:
		maxfid = FUNC7(status);
		/*
		 * we should actually use a variable named 'maxvid' if K8,
		 * but why introducing a new variable for that?
		 */
		startvid = FUNC8(status);
		break;
	default:
		return (ENODEV);
	}

	if (bootverbose) {
		FUNC14(dev, "STATUS: 0x%jx\n", status);
		FUNC14(dev, "STATUS: maxfid: 0x%02x\n", maxfid);
		FUNC14(dev, "STATUS: %s: 0x%02x\n",
		    sc->pn_type == PN7_TYPE ? "startvid" : "maxvid",
		    startvid);
	}

	sig = FUNC10(PSB_START, PSB_SIG, PSB_LEN, PSB_STEP, PSB_OFF);
	if (sig) {
		struct pst_header *pst;

		psb = (struct psb_header*)(uintptr_t)FUNC0(sig);

		switch (psb->version) {
		default:
			return (ENODEV);
		case 0x14:
			/*
			 * We can't be picky about numpst since at least
			 * some systems have a value of 1 and some have 2.
			 * We trust that cpuid_is_k7() will be better at
			 * catching that we're on a K8 anyway.
			 */
			if (sc->pn_type != PN8_TYPE)
				return (EINVAL);
			sc->vst = psb->settlingtime;
			sc->rvo = FUNC6(psb->res1);
			sc->irt = FUNC4(psb->res1);
			sc->mvs = FUNC5(psb->res1);
			sc->low = FUNC3(psb->res1);
			if (bootverbose) {
				FUNC14(dev, "PSB: VST: %d\n",
				    psb->settlingtime);
				FUNC14(dev, "PSB: RVO %x IRT %d "
				    "MVS %d BATT %d\n",
				    sc->rvo,
				    sc->irt,
				    sc->mvs,
				    sc->low);
			}
			break;
		case 0x12:
			if (sc->pn_type != PN7_TYPE)
				return (EINVAL);
			sc->sgtc = psb->settlingtime * sc->fsb;
			if (sc->sgtc < 100 * sc->fsb)
				sc->sgtc = 100 * sc->fsb;
			break;
		}

		p = ((uint8_t *) psb) + sizeof(struct psb_header);
		pst = (struct pst_header*) p;

		maxpst = 200;

		do {
			struct pst_header *pst = (struct pst_header*) p;

			if (cpuid == pst->cpuid &&
			    maxfid == pst->maxfid &&
			    startvid == pst->startvid) {
				sc->powernow_max_states = pst->numpstates;
				switch (sc->pn_type) {
				case PN7_TYPE:
					if (FUNC9(sc->fsb - pst->fsb) > 5)
						continue;
					break;
				case PN8_TYPE:
					break;
				}
				return (FUNC12(sc,
				    p + sizeof(struct pst_header),
				    sc->powernow_max_states));
			}

			p += sizeof(struct pst_header) + (2 * pst->numpstates);
		} while (FUNC11(pst->cpuid) && maxpst--);

		FUNC14(dev, "no match for extended cpuid %.3x\n", cpuid);
	}

	return (ENODEV);
}