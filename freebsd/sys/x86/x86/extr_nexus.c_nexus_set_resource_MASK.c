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
struct resource_list {int dummy; } ;
struct nexus_device {struct resource_list nx_resources; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct nexus_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource_list*,int,int,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, int type, int rid,
    rman_res_t start, rman_res_t count)
{
	struct nexus_device	*ndev = FUNC0(child);
	struct resource_list	*rl = &ndev->nx_resources;

	/* XXX this should return a success/failure indicator */
	FUNC1(rl, type, rid, start, start + count - 1, count);
	return(0);
}