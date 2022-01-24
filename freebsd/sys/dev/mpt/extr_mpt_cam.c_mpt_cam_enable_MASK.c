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
struct mpt_softc {scalar_t__ is_spi; scalar_t__ is_sas; scalar_t__ is_fc; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*) ; 
 scalar_t__ FUNC2 (struct mpt_softc*) ; 
 scalar_t__ FUNC3 (struct mpt_softc*) ; 
 scalar_t__ FUNC4 (struct mpt_softc*) ; 
 scalar_t__ FUNC5 (struct mpt_softc*) ; 
 scalar_t__ FUNC6 (struct mpt_softc*) ; 
 scalar_t__ FUNC7 (struct mpt_softc*) ; 

__attribute__((used)) static int
FUNC8(struct mpt_softc *mpt)
{
	int error;

	FUNC0(mpt);

	error = EIO;
	if (mpt->is_fc) {
		if (FUNC2(mpt)) {
			goto out;
		}
		if (FUNC5(mpt)) {
			goto out;
		}
	} else if (mpt->is_sas) {
		if (FUNC3(mpt)) {
			goto out;
		}
		if (FUNC6(mpt)) {
			goto out;
		}
	} else if (mpt->is_spi) {
		if (FUNC4(mpt)) {
			goto out;
		}
		if (FUNC7(mpt)) {
			goto out;
		}
	}
	error = 0;

out:
	FUNC1(mpt);
	return (error);
}