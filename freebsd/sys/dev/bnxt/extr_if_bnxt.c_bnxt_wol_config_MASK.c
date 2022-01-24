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
struct bnxt_softc {int wol; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTSUP ; 
 int IFCAP_WOL_MAGIC ; 
 scalar_t__ FUNC0 (struct bnxt_softc*) ; 
 scalar_t__ FUNC1 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct bnxt_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(if_ctx_t ctx)
{
	struct bnxt_softc *softc = FUNC5(ctx);
	if_t ifp = FUNC4(ctx);

	if (!softc)
		return -EBUSY;

	if (!FUNC2(softc))
		return -ENOTSUP;

	if (FUNC3(ifp) & IFCAP_WOL_MAGIC) {
		if (!softc->wol) {
			if (FUNC0(softc))
				return -EBUSY;
			softc->wol = 1;
		}
	} else {
		if (softc->wol) {
			if (FUNC1(softc))
				return -EBUSY;
			softc->wol = 0;
		}
	}

	return 0;
}