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
struct pmufreq_softc {scalar_t__ maxfreq; scalar_t__ curfreq; } ;
struct cf_setting {scalar_t__ freq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct pmufreq_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, const struct cf_setting *set)
{
	struct pmufreq_softc *sc;
	int error, speed_sel;

	if (set == NULL)
		return (EINVAL);

	sc = FUNC0(dev);

	if (set->freq == sc->maxfreq)
		speed_sel = 0;
	else
		speed_sel = 1;

	error = FUNC1(speed_sel);
	if (error == 0)
		sc->curfreq = set->freq;

	return (error);
}