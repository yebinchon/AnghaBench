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
typedef  int u_int ;
struct siba_core_id {int num_admatch; int num_cfg_blocks; } ;
typedef  int bhnd_port_type ;

/* Variables and functions */
#define  BHND_PORT_AGENT 129 
#define  BHND_PORT_DEVICE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct siba_core_id*,int,int) ; 

u_int
FUNC4(struct siba_core_id *core_id, bhnd_port_type port_type,
    u_int port)
{
	/* The port must exist */
	if (!FUNC3(core_id, port_type, port))
		return (0);

	switch (port_type) {
	case BHND_PORT_DEVICE:
		/* The first address space, if any, is mapped to device0.0 */
		if (port == 0)
			return (FUNC1(core_id->num_admatch, 1));

		/* All remaining address spaces are mapped to device0.(n - 1) */
		if (port == 1 && core_id->num_admatch >= 2)
			return (core_id->num_admatch - 1);

		break;

	case BHND_PORT_AGENT:
		/* All config blocks are mapped to a single port */
		if (port == 0)
			return (core_id->num_cfg_blocks);

		break;

	default:
		break;
	}

	/* Validated above */
	FUNC2("siba_is_port_valid() returned true for unknown %s.%u port",
	    FUNC0(port_type), port);

}