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
struct ng_mesg {int dummy; } ;
typedef  int /*<<< orphan*/  ng_l2cap_p ;

/* Variables and functions */
 int ENOTSUP ; 

int
FUNC0(ng_l2cap_p l2cap, struct ng_mesg *msg)
{
	return (ENOTSUP);
}