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
typedef  int uint32_t ;
struct tsec_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_READ_DELAY ; 
 int TSEC_READ_RETRY ; 
 int /*<<< orphan*/  TSEC_REG_MIIMIND ; 

__attribute__((used)) static int
FUNC2(struct tsec_softc *sc, uint32_t flags)
{
	int timeout;

	/*
	 * The status indicators are not set immediatly after a command.
	 * Discard the first value.
	 */
	FUNC1(sc, TSEC_REG_MIIMIND);

	timeout = TSEC_READ_RETRY;
	while ((FUNC1(sc, TSEC_REG_MIIMIND) & flags) && --timeout)
		FUNC0(TSEC_READ_DELAY);

	return (timeout == 0);
}