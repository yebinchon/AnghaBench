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
struct vmbus_channel {int dummy; } ;
struct hn_softc {int /*<<< orphan*/  hn_prichan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_channel*) ; 

__attribute__((used)) static void
FUNC5(struct hn_softc *sc, struct vmbus_channel *chan)
{

	/*
	 * NOTE:
	 * The TX bufring will not be drained by the hypervisor,
	 * if the primary channel is revoked.
	 */
	while (!FUNC3(chan) ||
	    (!FUNC2(sc->hn_prichan) &&
	     !FUNC4(chan)))
		FUNC0("waitch", 1);
	FUNC1(chan);
}