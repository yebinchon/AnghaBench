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
struct hwpstate_softc {int cfnum; struct hwpstate_setting* hwpstate_settings; } ;
struct hwpstate_setting {int /*<<< orphan*/  pstate_id; int /*<<< orphan*/  freq; } ;
struct cf_setting {int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct hwpstate_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, const struct cf_setting *cf)
{
	struct hwpstate_softc *sc;
	struct hwpstate_setting *set;
	int i;

	if (cf == NULL)
		return (EINVAL);
	sc = FUNC1(dev);
	set = sc->hwpstate_settings;
	for (i = 0; i < sc->cfnum; i++)
		if (FUNC0(cf->freq, set[i].freq))
			break;
	if (i == sc->cfnum)
		return (EINVAL);

	return (FUNC2(dev, set[i].pstate_id));
}