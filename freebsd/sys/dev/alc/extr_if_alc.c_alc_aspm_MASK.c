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
struct alc_softc {int alc_flags; } ;

/* Variables and functions */
 int ALC_FLAG_AR816X_FAMILY ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int) ; 

__attribute__((used)) static void
FUNC2(struct alc_softc *sc, int init, int media)
{

	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
		FUNC1(sc, init);
	else
		FUNC0(sc, media);
}