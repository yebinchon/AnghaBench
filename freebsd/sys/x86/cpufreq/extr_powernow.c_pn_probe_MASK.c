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
typedef  size_t u_int ;
struct pn_softc {int fsb; int /*<<< orphan*/  vid_to_volts; int /*<<< orphan*/  pn_type; scalar_t__ errata; } ;
struct pcpu {int /*<<< orphan*/  pc_cpuid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MSR_AMDK7_FIDVID_STATUS ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  PN7_TYPE ; 
 size_t FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 size_t FUNC5 (int) ; 
 int /*<<< orphan*/  PN8_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 struct pcpu* FUNC7 (int /*<<< orphan*/ ) ; 
 int cpu_id ; 
 struct pn_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pn7_desktop_vid_to_volts ; 
 int* pn7_fid_to_mult ; 
 int /*<<< orphan*/  pn7_mobile_vid_to_volts ; 
 int* pn8_fid_to_mult ; 
 int /*<<< orphan*/  pn8_vid_to_volts ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct pn_softc *sc;
	uint64_t status;
	uint64_t rate;
	struct pcpu *pc;
	u_int sfid, mfid, cfid;

	sc = FUNC8(dev);
	sc->errata = 0;
	status = FUNC10(MSR_AMDK7_FIDVID_STATUS);

	pc = FUNC7(dev);
	if (pc == NULL)
		return (ENODEV);

	FUNC6(pc->pc_cpuid, &rate);

	switch (cpu_id & 0xf00) {
	case 0x600:
		sfid = FUNC2(status);
		mfid = FUNC1(status);
		cfid = FUNC0(status);
		sc->pn_type = PN7_TYPE;
		sc->fsb = rate / 100000 / pn7_fid_to_mult[cfid];

		/*
		 * If start FID is different to max FID, then it is a
		 * mobile processor.  If not, it is a low powered desktop
		 * processor.
		 */
		if (FUNC2(status) != FUNC1(status)) {
			sc->vid_to_volts = pn7_mobile_vid_to_volts;
			FUNC9(dev, "PowerNow! K7");
		} else {
			sc->vid_to_volts = pn7_desktop_vid_to_volts;
			FUNC9(dev, "Cool`n'Quiet K7");
		}
		break;

	case 0xf00:
		sfid = FUNC5(status);
		mfid = FUNC4(status);
		cfid = FUNC3(status);
		sc->pn_type = PN8_TYPE;
		sc->vid_to_volts = pn8_vid_to_volts;
		sc->fsb = rate / 100000 / pn8_fid_to_mult[cfid];

		if (FUNC5(status) != FUNC4(status))
			FUNC9(dev, "PowerNow! K8");
		else
			FUNC9(dev, "Cool`n'Quiet K8");
		break;
	default:
		return (ENODEV);
	}

	return (0);
}