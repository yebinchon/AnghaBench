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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

device_t
FUNC6(phandle_t node, uint32_t port_id, uint32_t ep_id)
{
	phandle_t outport, port, endpoint, remote;

	port = FUNC3(node, port_id);
	if (port == 0)
		return (NULL);
	endpoint = FUNC2(port, ep_id);
	if (endpoint == 0)
		return NULL;
	remote = FUNC4(endpoint);
	if (remote == 0)
		return (NULL);
	outport = FUNC5(remote);
	if (outport == 0)
		return (NULL);

	return (FUNC0(FUNC1(outport)));
}