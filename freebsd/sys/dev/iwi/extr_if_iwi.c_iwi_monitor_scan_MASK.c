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
struct iwi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_LOCK_DECL ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwi_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, int npending)
{
	struct iwi_softc *sc = arg;
	IWI_LOCK_DECL;

	FUNC0(sc);
	(void) FUNC2(sc, 2000, 0);
	FUNC1(sc);
}