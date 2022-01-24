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
typedef  int /*<<< orphan*/  u_int ;
struct bhndb_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent_dev; } ;
struct bhndb_hw {int /*<<< orphan*/ * hw_reqs; } ;
struct bhnd_core_info {int dummy; } ;

/* Variables and functions */
 struct bhndb_hw* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_softc*,struct bhnd_core_info*,int /*<<< orphan*/ ,struct bhndb_hw const*) ; 

__attribute__((used)) static int
FUNC2(struct bhndb_softc *sc, struct bhnd_core_info *cores,
    u_int ncores, const struct bhndb_hw **hw)
{
	const struct bhndb_hw	*next, *hw_table;

	/* Search for the first matching hardware config. */
	hw_table = FUNC0(sc->parent_dev, sc->dev);
	for (next = hw_table; next->hw_reqs != NULL; next++) {
		if (!FUNC1(sc, cores, ncores, next))
			continue;

		/* Found */
		*hw = next;
		return (0);
	}

	return (ENOENT);
}