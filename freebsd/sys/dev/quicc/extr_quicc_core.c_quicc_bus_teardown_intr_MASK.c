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
struct resource {int dummy; } ;
struct quicc_device {void* qd_ih; int /*<<< orphan*/ * qd_ih_arg; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct quicc_device* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int
FUNC2(device_t dev, device_t child, struct resource *r,
    void *cookie)
{
	struct quicc_device *qd;

	if (FUNC1(child) != dev)
		return (EINVAL);

	qd = FUNC0(child);
	if (qd->qd_ih != cookie)
		return (EINVAL);

	qd->qd_ih = NULL;
	qd->qd_ih_arg = NULL;
	return (0);
}