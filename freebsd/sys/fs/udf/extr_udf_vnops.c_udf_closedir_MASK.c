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
struct udf_dirstream {int /*<<< orphan*/ * buf; scalar_t__ fid_fragment; int /*<<< orphan*/ * bp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_UDFFID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udf_zone_ds ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct udf_dirstream*) ; 

__attribute__((used)) static void
FUNC3(struct udf_dirstream *ds)
{

	if (ds->bp != NULL)
		FUNC0(ds->bp);

	if (ds->fid_fragment && ds->buf != NULL)
		FUNC1(ds->buf, M_UDFFID);

	FUNC2(udf_zone_ds, ds);
}