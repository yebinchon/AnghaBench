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
struct schizo_softc {int /*<<< orphan*/  sc_cdma_state; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  SCHIZO_CDMA_STATE_PENDING ; 
 int /*<<< orphan*/  SCHIZO_CDMA_STATE_RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void *arg)
{
	struct schizo_softc *sc = arg;

	FUNC0(&sc->sc_cdma_state, SCHIZO_CDMA_STATE_PENDING,
	    SCHIZO_CDMA_STATE_RECEIVED);
	return (FILTER_HANDLED);
}