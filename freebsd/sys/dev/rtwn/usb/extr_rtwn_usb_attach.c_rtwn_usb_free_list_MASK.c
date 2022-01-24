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
struct rtwn_softc {int dummy; } ;
struct rtwn_data {int /*<<< orphan*/ * m; int /*<<< orphan*/ * ni; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_USBDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc, struct rtwn_data data[], int ndata)
{
	int i;

	for (i = 0; i < ndata; i++) {
		struct rtwn_data *dp = &data[i];

		if (dp->buf != NULL) {
			FUNC0(dp->buf, M_USBDEV);
			dp->buf = NULL;
		}
		if (dp->ni != NULL) {
			FUNC1(dp->ni);
			dp->ni = NULL;
		}
		if (dp->m != NULL) {
			FUNC2(dp->m);
			dp->m = NULL;
		}
	}
}