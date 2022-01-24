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
struct fxp_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*,int) ; 

__attribute__((used)) static void
FUNC3(void *xsc)
{
	struct fxp_softc *sc = xsc;

	FUNC0(sc);
	FUNC2(sc, 1);
	FUNC1(sc);
}