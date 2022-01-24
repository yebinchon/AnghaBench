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
struct bhndb_softc {int /*<<< orphan*/  bridge_core; int /*<<< orphan*/  parent_dev; } ;
struct bhnd_core_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bhnd_core_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_core_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_core_info*,int /*<<< orphan*/ *) ; 
 struct bhndb_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(device_t dev, device_t child,
    struct bhnd_core_info *core)
{
	struct bhndb_softc	*sc;

	sc = FUNC4(dev);

	/* Try to defer to the bhndb bus parent */
	if (FUNC0(sc->parent_dev, dev, core))
		return (true);

	/* Otherwise, we treat bridge-capable cores as unpopulated if they're
	 * not the configured host bridge */
	if (FUNC1(FUNC2(core)))
		return (!FUNC3(core, &sc->bridge_core));

	/* Assume the core is populated */
	return (false);
}