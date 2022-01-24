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
struct iwm_softc {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(struct iwm_softc *sc)
{
	if (FUNC1(FUNC0(sc)) == 1)
		return FALSE;

	/*
	 * XXX Also return FALSE when SMPS (Spatial Multiplexing Powersave)
	 *     is used on any vap (in the future).
	 */

	return TRUE;
}