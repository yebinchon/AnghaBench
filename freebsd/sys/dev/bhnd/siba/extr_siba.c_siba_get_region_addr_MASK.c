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
struct siba_cfg_block {scalar_t__ cb_size; int /*<<< orphan*/  cb_base; } ;
struct siba_addrspace {scalar_t__ sa_bus_reserved; scalar_t__ sa_size; int /*<<< orphan*/  sa_base; } ;
typedef  scalar_t__ device_t ;
typedef  scalar_t__ bhnd_size_t ;
typedef  int /*<<< orphan*/  bhnd_port_type ;
typedef  int /*<<< orphan*/  bhnd_addr_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int ENOENT ; 
 struct siba_devinfo* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct siba_addrspace* FUNC3 (struct siba_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siba_cfg_block* FUNC4 (struct siba_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, bhnd_port_type port_type,
    u_int port_num, u_int region_num, bhnd_addr_t *addr, bhnd_size_t *size)
{
	struct siba_devinfo	*dinfo;
	struct siba_addrspace	*addrspace;
	struct siba_cfg_block	*cfg;

	/* delegate non-bus-attached devices to our parent */
	if (FUNC2(child) != dev) {
		return (FUNC0(FUNC2(dev), child,
		    port_type, port_num, region_num, addr, size));
	}

	dinfo = FUNC1(child);

	/* Look for a matching addrspace */
	addrspace = FUNC3(dinfo, port_type, port_num, region_num);
	if (addrspace != NULL) {
		*addr = addrspace->sa_base;
		*size = addrspace->sa_size - addrspace->sa_bus_reserved;
		return (0);
	}

	/* Look for a matching cfg block */
	cfg = FUNC4(dinfo, port_type, port_num, region_num);
	if (cfg != NULL) {
		*addr = cfg->cb_base;
		*size = cfg->cb_size;
		return (0);
	}

	/* Not found */
	return (ENOENT);
}