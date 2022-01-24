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
typedef  size_t u_int ;
struct vmxnet3_softc {int /*<<< orphan*/ * vmx_mcast; } ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 size_t ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 size_t VMXNET3_MULTICAST_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static u_int
FUNC2(void *arg, struct sockaddr_dl *sdl, u_int count)
{
	struct vmxnet3_softc *sc = arg;

	if (count < VMXNET3_MULTICAST_MAX)
		FUNC1(FUNC0(sdl), &sc->vmx_mcast[count * ETHER_ADDR_LEN],
		    ETHER_ADDR_LEN);

	return (1);
}