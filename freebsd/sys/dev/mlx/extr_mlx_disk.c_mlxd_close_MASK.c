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
struct mlxd_softc {int /*<<< orphan*/  mlxd_controller; int /*<<< orphan*/  mlxd_flags; } ;
struct disk {scalar_t__ d_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MLXD_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct disk *dp)
{
    struct mlxd_softc	*sc = (struct mlxd_softc *)dp->d_drv1;

    FUNC4(1);

    if (sc == NULL)
	return (ENXIO);
    FUNC0(sc->mlxd_controller);
    FUNC2(sc->mlxd_controller);
    sc->mlxd_flags &= ~MLXD_OPEN;
    FUNC3(sc->mlxd_controller);
    FUNC1(sc->mlxd_controller);
    return (0);
}