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
struct bhndb_regwin {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bhnd_port_type ;
typedef  int /*<<< orphan*/  bhnd_devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_REGWIN_T_DYN ; 
 struct bhndb_regwin* FUNC0 (struct bhndb_regwin const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhndb_regwin const* FUNC1 (struct bhndb_regwin const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const struct bhndb_regwin *
FUNC2(const struct bhndb_regwin *table,
    bhnd_devclass_t class, int unit, bhnd_port_type port_type, u_int port,
    u_int region, bus_size_t offset, bus_size_t min_size)
{
	const struct bhndb_regwin *rw;

	/* Prefer a fixed core mapping */
	rw = FUNC0(table, class, unit, port_type,
	    port, region, offset, min_size);
	if (rw != NULL)
		return (rw);

	/* Fall back on a generic dynamic window */
	return (FUNC1(table, BHNDB_REGWIN_T_DYN, min_size));
}