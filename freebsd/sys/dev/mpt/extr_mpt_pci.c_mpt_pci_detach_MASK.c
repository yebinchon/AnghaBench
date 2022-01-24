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
struct mpt_softc {int /*<<< orphan*/ * eh; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mpt_softc*) ; 
 int /*<<< orphan*/  shutdown_post_sync ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct mpt_softc *mpt;

	mpt  = (struct mpt_softc*)FUNC2(dev);

	if (mpt) {
		FUNC4(mpt);
		FUNC3(mpt);
		FUNC8(mpt, /*reinit*/FALSE);
		FUNC7(mpt);
		FUNC5(mpt);
		FUNC6(mpt);
#if 0
		mpt_unlink_peer(mpt);
#endif
		if (mpt->eh != NULL) {
                        FUNC0(shutdown_post_sync, mpt->eh);
		}
		FUNC1(mpt);
	}
	return(0);
}