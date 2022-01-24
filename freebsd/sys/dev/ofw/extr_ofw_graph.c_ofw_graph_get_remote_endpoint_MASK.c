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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

phandle_t
FUNC1(phandle_t endpoint)
{
	phandle_t remote;

	if (FUNC0(endpoint, "remote-endpoint", &remote,
	      sizeof(phandle_t)) <= 0)
		return (0);

	return (remote);
}