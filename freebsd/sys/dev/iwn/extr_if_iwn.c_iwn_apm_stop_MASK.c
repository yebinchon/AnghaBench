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
struct iwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWN_GP_CNTRL ; 
 int /*<<< orphan*/  IWN_GP_CNTRL_INIT_DONE ; 
 int /*<<< orphan*/  IWN_RESET ; 
 int /*<<< orphan*/  IWN_RESET_SW ; 
 int /*<<< orphan*/  FUNC2 (struct iwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwn_softc*) ; 

__attribute__((used)) static void
FUNC4(struct iwn_softc *sc)
{
	FUNC3(sc);

	/* Reset the entire device. */
	FUNC2(sc, IWN_RESET, IWN_RESET_SW);
	FUNC0(10);
	/* Clear "initialization complete" bit. */
	FUNC1(sc, IWN_GP_CNTRL, IWN_GP_CNTRL_INIT_DONE);
}