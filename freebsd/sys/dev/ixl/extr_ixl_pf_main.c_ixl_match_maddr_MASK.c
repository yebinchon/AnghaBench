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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_dl {int dummy; } ;
struct ixl_mac_filter {int /*<<< orphan*/  macaddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct ixl_mac_filter *f = arg;

	if (FUNC1(f->macaddr, (u8 *)FUNC0(sdl)))
		return (1);
	else
		return (0);
}