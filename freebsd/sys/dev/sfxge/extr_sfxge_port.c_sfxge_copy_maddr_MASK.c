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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 int EFX_MAC_ADDR_LEN ; 
 int EFX_MAC_MULTICAST_LIST_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	uint8_t *mcast_addr = arg;

	if (cnt == EFX_MAC_MULTICAST_LIST_MAX)
		return (0);

	FUNC1(mcast_addr + (cnt * EFX_MAC_ADDR_LEN), FUNC0(sdl),
	    EFX_MAC_ADDR_LEN);

	return (1);
}