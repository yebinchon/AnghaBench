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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct hme_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hme_softc*) ; 
 int /*<<< orphan*/  HME_SEBI_STAT ; 
 int FUNC2 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int HME_SEB_STAT_ALL_ERRORS ; 
 int HME_SEB_STAT_HOSTTOTX ; 
 int HME_SEB_STAT_RXTOHOST ; 
 int HME_SEB_STAT_TXALL ; 
 int /*<<< orphan*/  FUNC3 (struct hme_softc*) ; 
 int /*<<< orphan*/  KTR_HME ; 
 int /*<<< orphan*/  FUNC4 (struct hme_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hme_softc*) ; 

void
FUNC7(void *v)
{
	struct hme_softc *sc = (struct hme_softc *)v;
	u_int32_t status;

	FUNC1(sc);
	status = FUNC2(sc, HME_SEBI_STAT);
	FUNC0(KTR_HME, "hme_intr: status %#x", (u_int)status);

	if ((status & HME_SEB_STAT_ALL_ERRORS) != 0)
		FUNC4(sc, status);

	if ((status & HME_SEB_STAT_RXTOHOST) != 0)
		FUNC5(sc);

	if ((status & (HME_SEB_STAT_TXALL | HME_SEB_STAT_HOSTTOTX)) != 0)
		FUNC6(sc);
	FUNC3(sc);
}