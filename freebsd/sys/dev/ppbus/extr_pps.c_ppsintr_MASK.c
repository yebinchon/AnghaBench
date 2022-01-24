#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pps_data {int /*<<< orphan*/  ppbus; TYPE_2__* pps; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ ppsparam; } ;

/* Variables and functions */
 int AUTOFEED ; 
 int IRQENABLE ; 
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int PPS_ECHOASSERT ; 
 int nACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct pps_data *sc = (struct pps_data *)arg;

	FUNC0(sc->ppbus);
	FUNC3(&sc->pps[0]);
	if (!(FUNC1(sc->ppbus) & nACK))
		return;

	if (sc->pps[0].ppsparam.mode & PPS_ECHOASSERT)
		FUNC2(sc->ppbus, IRQENABLE | AUTOFEED);
	FUNC4(&sc->pps[0], PPS_CAPTUREASSERT);
	if (sc->pps[0].ppsparam.mode & PPS_ECHOASSERT)
		FUNC2(sc->ppbus, IRQENABLE);
}