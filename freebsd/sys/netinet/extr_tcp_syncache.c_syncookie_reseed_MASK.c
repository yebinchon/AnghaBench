#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int oddeven; int /*<<< orphan*/  reseed; int /*<<< orphan*/ ** key; } ;
struct tcp_syncache {TYPE_1__ secret; } ;

/* Variables and functions */
 int SYNCOOKIE_LIFETIME ; 
 int /*<<< orphan*/  SYNCOOKIE_SECRET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int hz ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct tcp_syncache *sc = arg;
	uint8_t *secbits;
	int secbit;

	/*
	 * Reseeding the secret doesn't have to be protected by a lock.
	 * It only must be ensured that the new random values are visible
	 * to all CPUs in a SMP environment.  The atomic with release
	 * semantics ensures that.
	 */
	secbit = (sc->secret.oddeven & 0x1) ? 0 : 1;
	secbits = sc->secret.key[secbit];
	FUNC0(secbits, SYNCOOKIE_SECRET_SIZE, 0);
	FUNC1(&sc->secret.oddeven, 1);

	/* Reschedule ourself. */
	FUNC2(&sc->secret.reseed, SYNCOOKIE_LIFETIME * hz);
}