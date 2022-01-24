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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	uint8_t *hashtbl = arg;
	uint32_t h;

	h = FUNC1(FUNC0(sdl));
	hashtbl[h >> 3] |= 1 << (h & 0x7);

	return (1);
}