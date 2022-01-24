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
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;
struct llan_softc {int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_MULTICAST_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  LLAN_ADD_MULTICAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u_int
FUNC3(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct llan_softc *sc = arg;
	uint64_t macaddr = 0;

	FUNC1((uint8_t *)&macaddr + 2, FUNC0(sdl), 6);
	FUNC2(H_MULTICAST_CTRL, sc->unit, LLAN_ADD_MULTICAST, macaddr);

	return (1);
}