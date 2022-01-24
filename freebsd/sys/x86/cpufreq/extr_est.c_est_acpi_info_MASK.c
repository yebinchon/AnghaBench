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
typedef  int /*<<< orphan*/  uint16_t ;
struct est_softc {int /*<<< orphan*/  acpi_settings; } ;
struct cf_setting {scalar_t__ freq; int /*<<< orphan*/  power; int /*<<< orphan*/ * spec; int /*<<< orphan*/  id16; int /*<<< orphan*/  volts; } ;
typedef  struct cf_setting freq_info ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct cf_setting*,int*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int MAX_SETTINGS ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct est_softc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cf_setting*,int /*<<< orphan*/ ) ; 
 struct cf_setting* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strict ; 

__attribute__((used)) static int
FUNC10(device_t dev, freq_info **freqs, size_t *freqslen)
{
	struct est_softc *sc;
	struct cf_setting *sets;
	freq_info *table;
	device_t perf_dev;
	int count, error, i, j;
	uint16_t saved_id16;

	perf_dev = FUNC1(FUNC2(dev), "acpi_perf", -1);
	if (perf_dev == NULL || !FUNC4(perf_dev))
		return (ENXIO);

	/* Fetch settings from acpi_perf. */
	sc = FUNC3(dev);
	table = NULL;
	sets = FUNC9(MAX_SETTINGS * sizeof(*sets), M_TEMP, M_NOWAIT);
	if (sets == NULL)
		return (ENOMEM);
	count = MAX_SETTINGS;
	error = FUNC0(perf_dev, sets, &count);
	if (error)
		goto out;

	/* Parse settings into our local table format. */
	table = FUNC9(count * sizeof(*table), M_DEVBUF, M_NOWAIT);
	if (table == NULL) {
		error = ENOMEM;
		goto out;
	}
	FUNC6(&saved_id16);
	for (i = 0, j = 0; i < count; i++) {
		/*
		 * Confirm id16 value is correct.
		 */
		if (sets[i].freq > 0) {
			error = FUNC7(dev, sets[i].spec[0], strict);
			if (error != 0) {
				if (bootverbose)
					FUNC5(dev, "Invalid freq %u, "
					    "ignored.\n", sets[i].freq);
				continue;
			}
			table[j].freq = sets[i].freq;
			table[j].volts = sets[i].volts;
			table[j].id16 = sets[i].spec[0];
			table[j].power = sets[i].power;
			++j;
		}
	}
	/* restore saved setting */
	FUNC7(dev, saved_id16, 0);

	sc->acpi_settings = TRUE;
	*freqs = table;
	*freqslen = j;
	error = 0;

out:
	if (sets)
		FUNC8(sets, M_TEMP);
	if (error && table)
		FUNC8(table, M_DEVBUF);
	return (error);
}