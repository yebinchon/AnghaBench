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
struct resource_list_entry {struct resource* res; scalar_t__ start; scalar_t__ count; } ;
struct resource {int dummy; } ;
struct quicc_device {int /*<<< orphan*/  qd_rman; int /*<<< orphan*/  qd_rlist; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bs_be_tag ; 
 struct quicc_device* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct resource_list_entry* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 struct resource* FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int /*<<< orphan*/ *) ; 

struct resource *
FUNC7(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct quicc_device *qd;
	struct resource_list_entry *rle;

	if (FUNC2(child) != dev)
		return (NULL);

	/* We only support default allocations. */
	if (!FUNC0(start, end))
		return (NULL);

	qd = FUNC1(child);
	rle = FUNC3(&qd->qd_rlist, type, *rid);
	if (rle == NULL)
		return (NULL);

	if (rle->res == NULL) {
		rle->res = FUNC4(qd->qd_rman, rle->start,
		    rle->start + rle->count - 1, rle->count, flags, child);
		if (rle->res != NULL) {
			FUNC6(rle->res, &bs_be_tag);
			FUNC5(rle->res, rle->start);
		}
	}
	return (rle->res);
}