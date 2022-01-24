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
struct twe_softc {TYPE_1__* twe_drive; int /*<<< orphan*/  twe_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  td_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct twe_softc*,char*,int) ; 

int
FUNC6(struct twe_softc *sc, int unit)
{
    int error = 0;

    FUNC0(sc);
    FUNC3(&Giant);
    error = FUNC2(sc->twe_dev, sc->twe_drive[unit].td_disk);
    FUNC4(&Giant);
    if (error != 0) {
	FUNC5(sc, "failed to delete unit %d\n", unit);
	return(error);
    }
    FUNC1(&sc->twe_drive[unit], sizeof(sc->twe_drive[unit]));
    return(error);
}