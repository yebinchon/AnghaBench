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
typedef  size_t u_int ;
struct siba_devinfo {struct siba_cfg_block* cfg; int /*<<< orphan*/  core_id; } ;
struct siba_cfg_block {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_port_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,size_t,size_t*) ; 

struct siba_cfg_block *
FUNC1(struct siba_devinfo *dinfo, bhnd_port_type type, u_int port,
    u_int region)
{
	u_int	cfgidx;
	int	error;

	/* Map to addrspace index */
	error = FUNC0(&dinfo->core_id, type, port, region, &cfgidx);
	if (error)
		return (NULL);

	/* Found */
	return (&dinfo->cfg[cfgidx]);
}