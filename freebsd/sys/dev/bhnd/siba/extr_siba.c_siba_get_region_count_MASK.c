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
struct siba_devinfo {int /*<<< orphan*/  core_id; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  bhnd_port_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC4(device_t dev, device_t child, bhnd_port_type type,
    u_int port)
{
	struct siba_devinfo	*dinfo;

	/* delegate non-bus-attached devices to our parent */
	if (FUNC2(child) != dev)
		return (FUNC0(FUNC2(dev), child,
		    type, port));

	dinfo = FUNC1(child);
	return (FUNC3(&dinfo->core_id, type, port));
}