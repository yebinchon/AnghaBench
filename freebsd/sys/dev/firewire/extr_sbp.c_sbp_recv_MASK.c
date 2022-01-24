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
struct sbp_softc {int dummy; } ;
struct fw_xfer {scalar_t__ sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_xfer*) ; 

__attribute__((used)) static void
FUNC3(struct fw_xfer *xfer)
{
	struct sbp_softc *sbp;

	sbp = (struct sbp_softc *)xfer->sc;
	FUNC0(sbp);
	FUNC2(xfer);
	FUNC1(sbp);
}