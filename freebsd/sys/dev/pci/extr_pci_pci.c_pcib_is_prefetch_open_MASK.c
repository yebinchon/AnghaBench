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
struct pcib_softc {scalar_t__ pmembase; scalar_t__ pmemlimit; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct pcib_softc *sc)
{
	return (sc->pmembase > 0 && sc->pmembase < sc->pmemlimit);
}