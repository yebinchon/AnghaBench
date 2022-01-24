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
struct sockaddr_dl {int sdl_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
#define  IFT_ETHER 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(struct sockaddr_dl *sdl)
{
	switch (sdl->sdl_type) {
	case IFT_ETHER:
		return (FUNC0(ETHER_ADDR_LEN + 2));
	default:
		return (0);
	}
}