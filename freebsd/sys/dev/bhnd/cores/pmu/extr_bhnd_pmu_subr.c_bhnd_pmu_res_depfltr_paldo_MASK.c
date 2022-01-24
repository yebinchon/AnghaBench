#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  board_flags; } ;
struct bhnd_pmu_softc {TYPE_1__ board; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_BFL_PALDO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(struct bhnd_pmu_softc *sc)
{
	return (FUNC0(sc->board.board_flags, BHND_BFL_PALDO));
}