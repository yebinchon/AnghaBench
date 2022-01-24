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
struct bwi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_CLOCK_MODE_SLOW ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bwi_softc *sc)
{
	FUNC1(sc, BWI_CLOCK_MODE_SLOW);
	FUNC0(sc, 1);
}