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
struct siba_devinfo {int dummy; } ;
struct siba_cfg_block {int cb_rid; } ;
struct siba_addrspace {int sa_rid; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  bhnd_port_type ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct siba_addrspace* FUNC3 (struct siba_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siba_cfg_block* FUNC4 (struct siba_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, bhnd_port_type port_type,
    u_int port_num, u_int region_num)
{
	struct siba_devinfo	*dinfo;
	struct siba_addrspace	*addrspace;
	struct siba_cfg_block	*cfg;

	/* delegate non-bus-attached devices to our parent */
	if (FUNC2(child) != dev)
		return (FUNC0(FUNC2(dev), child,
		    port_type, port_num, region_num));

	dinfo = FUNC1(child);

	/* Look for a matching addrspace entry */
	addrspace = FUNC3(dinfo, port_type, port_num, region_num);
	if (addrspace != NULL)
		return (addrspace->sa_rid);

	/* Try the config blocks */
	cfg = FUNC4(dinfo, port_type, port_num, region_num);
	if (cfg != NULL)
		return (cfg->cb_rid);

	/* Not found */
	return (-1);
}