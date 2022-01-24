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
typedef  int u32 ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	u32 *hashes = arg;
	int h;

	h = FUNC1(FUNC0(sdl), ETHER_ADDR_LEN) & 0xFF;
	hashes[(h & 0xE0) >> 5] |= 1 << (h & 0x1F);

	return (1);
}