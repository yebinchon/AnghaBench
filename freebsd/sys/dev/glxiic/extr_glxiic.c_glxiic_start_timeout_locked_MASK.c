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
struct glxiic_softc {int timeout; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct glxiic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glxiic_timeout ; 

__attribute__((used)) static void
FUNC2(struct glxiic_softc *sc)
{

	FUNC0(sc);

	FUNC1(&sc->callout, SBT_1MS * sc->timeout, 0,
	    glxiic_timeout, sc, 0);
}