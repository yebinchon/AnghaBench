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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int u_int ;
struct powernow_state {size_t fid; int freq; int /*<<< orphan*/  power; int /*<<< orphan*/  vid; } ;
struct pn_softc {int errata; int pn_type; int powernow_max_states; int fsb; struct powernow_state* powernow_states; int /*<<< orphan*/  low; int /*<<< orphan*/  irt; int /*<<< orphan*/  rvo; int /*<<< orphan*/  pll; int /*<<< orphan*/  mvs; int /*<<< orphan*/  vst; scalar_t__ sgtc; } ;
struct cf_setting {int freq; int /*<<< orphan*/  power; scalar_t__* spec; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int A0_ERRATA ; 
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct cf_setting*,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int*) ; 
 int CPUFREQ_FLAG_INFO_ONLY ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MSR_AMDK7_FIDVID_STATUS ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
#define  PN7_TYPE 129 
#define  PN8_TYPE 128 
 int POWERNOW_MAX_STATES ; 
 size_t PX_SPEC_CONTROL ; 
 struct pn_softc* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct powernow_state*,struct powernow_state*,int) ; 
 int* pn7_fid_to_mult ; 
 int* pn8_fid_to_mult ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev, device_t perf_dev)
{
	int i, j, n;
	uint64_t status;
	uint32_t ctrl;
	u_int cpuid;
	u_int regs[4];
	struct pn_softc *sc;
	struct powernow_state state;
	struct cf_setting sets[POWERNOW_MAX_STATES];
	int count = POWERNOW_MAX_STATES;
	int type;
	int rv;

	if (perf_dev == NULL)
		return (ENXIO);

	rv = FUNC10(perf_dev, sets, &count);
	if (rv)
		return (ENXIO);
	rv = FUNC11(perf_dev, &type);
	if (rv || (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
		return (ENXIO);

	sc = FUNC13(dev);

	FUNC15(0x80000001, regs);
	cpuid = regs[0];
	if ((cpuid & 0xfff) == 0x760)
		sc->errata |= A0_ERRATA;

	ctrl = 0;
	sc->sgtc = 0;
	for (n = 0, i = 0; i < count; ++i) {
		ctrl = sets[i].spec[PX_SPEC_CONTROL];
		switch (sc->pn_type) {
		case PN7_TYPE:
			state.fid = FUNC0(ctrl);
			state.vid = FUNC2(ctrl);
			if ((sc->errata & A0_ERRATA) &&
			    (pn7_fid_to_mult[state.fid] % 10) == 5)
				continue;
			break;
		case PN8_TYPE:
			state.fid = FUNC3(ctrl);
			state.vid = FUNC8(ctrl);
			break;
		}
		state.freq = sets[i].freq * 1000;
		state.power = sets[i].power;

		j = n;
		while (j > 0 && sc->powernow_states[j - 1].freq < state.freq) {
			FUNC16(&sc->powernow_states[j],
			    &sc->powernow_states[j - 1],
			    sizeof(struct powernow_state));
			--j;
		}
		FUNC16(&sc->powernow_states[j], &state,
		    sizeof(struct powernow_state));
		++n;
	}

	sc->powernow_max_states = n;
	state = sc->powernow_states[0];
	status = FUNC17(MSR_AMDK7_FIDVID_STATUS);

	switch (sc->pn_type) {
	case PN7_TYPE:
		sc->sgtc = FUNC1(ctrl);
		/*
		 * XXX Some bios forget the max frequency!
		 * This maybe indicates we have the wrong tables.  Therefore,
		 * don't implement a quirk, but fallback to BIOS legacy
		 * tables instead.
		 */
		if (FUNC12(status) != state.fid) {
			FUNC14(dev, "ACPI MAX frequency not found\n");
			return (EINVAL);
		}
		sc->fsb = state.freq / 100 / pn7_fid_to_mult[state.fid];
		break;
	case PN8_TYPE:
		sc->vst = FUNC9(ctrl),
		sc->mvs = FUNC5(ctrl),
		sc->pll = FUNC6(ctrl),
		sc->rvo = FUNC7(ctrl),
		sc->irt = FUNC4(ctrl);
		sc->low = 0; /* XXX */

		/*
		 * powernow k8 supports only one low frequency.
		 */
		if (sc->powernow_max_states >= 2 &&
		    (sc->powernow_states[sc->powernow_max_states - 2].fid < 8))
			return (EINVAL);
		sc->fsb = state.freq / 100 / pn8_fid_to_mult[state.fid];
		break;
	}

	return (0);
}