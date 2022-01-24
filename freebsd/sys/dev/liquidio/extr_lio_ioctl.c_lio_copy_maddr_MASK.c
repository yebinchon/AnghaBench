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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_int ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ LIO_MAX_MULTICAST_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	uint64_t *mc = arg;

	if (cnt == LIO_MAX_MULTICAST_ADDR)
		return (0);

	mc += cnt;
	*mc = 0;
	FUNC1(((uint8_t *)mc) + 2, FUNC0(sdl), ETHER_ADDR_LEN);
	/* no need to swap bytes */

	return (1);
}