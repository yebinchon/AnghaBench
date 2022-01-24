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
typedef  scalar_t__ u_int ;
struct siba_core_id {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_port_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct siba_core_id*,int /*<<< orphan*/ ) ; 

bool
FUNC1(struct siba_core_id *core_id, bhnd_port_type port_type,
    u_int port)
{
	/* Verify the index against the port count */
	if (FUNC0(core_id, port_type) <= port)
		return (false);

	return (true);
}