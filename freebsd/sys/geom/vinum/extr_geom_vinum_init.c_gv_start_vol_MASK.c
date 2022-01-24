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
struct gv_volume {int plexcount; int /*<<< orphan*/  name; int /*<<< orphan*/  plexes; } ;
struct gv_plex {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gv_plex* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gv_plex*) ; 
 int FUNC3 (struct gv_volume*) ; 

int
FUNC4(struct gv_volume *v)
{
	struct gv_plex *p;
	int error;

	FUNC0(v != NULL, ("gv_start_vol: NULL v"));

	error = 0;

	if (v->plexcount == 0)
		return (ENXIO);

	else if (v->plexcount == 1) {
		p = FUNC1(&v->plexes);
		FUNC0(p != NULL, ("gv_start_vol: NULL p on %s", v->name));
		error = FUNC2(p);
	} else
		error = FUNC3(v);

	return (error);
}