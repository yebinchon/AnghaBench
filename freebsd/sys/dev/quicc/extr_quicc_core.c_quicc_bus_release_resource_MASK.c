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
struct resource_list_entry {int dummy; } ;
struct resource {int dummy; } ;
struct quicc_device {int /*<<< orphan*/  qd_rlist; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct quicc_device* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct resource_list_entry* FUNC2 (int /*<<< orphan*/ *,int,int) ; 

int
FUNC3(device_t dev, device_t child, int type, int rid,
    struct resource *res)
{
	struct quicc_device *qd;
	struct resource_list_entry *rle;

	if (FUNC1(child) != dev)
		return (EINVAL);

	qd = FUNC0(child);
	rle = FUNC2(&qd->qd_rlist, type, rid);
	return ((rle == NULL) ? EINVAL : 0);
}