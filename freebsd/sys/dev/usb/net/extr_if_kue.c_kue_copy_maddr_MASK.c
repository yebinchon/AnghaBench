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
typedef  scalar_t__ u_int ;
struct sockaddr_dl {int dummy; } ;
struct kue_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct kue_softc*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct kue_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC4(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct kue_softc *sc = arg;

	if (cnt >= FUNC1(sc))
		return (1);

	FUNC3(FUNC0(sc, cnt), FUNC2(sdl), ETHER_ADDR_LEN);

	return (1);
}