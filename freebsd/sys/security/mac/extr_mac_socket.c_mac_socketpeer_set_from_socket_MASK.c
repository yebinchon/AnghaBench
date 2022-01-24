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
struct socket {int /*<<< orphan*/  so_peerlabel; int /*<<< orphan*/  so_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ mac_policy_count ; 
 int /*<<< orphan*/  socketpeer_set_from_socket ; 

void
FUNC1(struct socket *oldso, struct socket *newso)
{
	
	if (mac_policy_count == 0)
		return;

	FUNC0(socketpeer_set_from_socket, oldso,
	    oldso->so_label, newso, newso->so_peerlabel);
}