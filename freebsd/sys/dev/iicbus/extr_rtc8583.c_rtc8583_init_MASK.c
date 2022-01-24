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
struct rtc8583_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  init_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCKF_SETTIME_NO_ADJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct rtc8583_softc	*sc;
	
	sc = (struct rtc8583_softc*)arg;
	FUNC2(&sc->init_hook);

	/*
	 * Register as a system realtime clock.
	 */
	FUNC0(sc->dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
	FUNC1(sc->dev, 1);
	return;
}