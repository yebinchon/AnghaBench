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
struct nlm_xlpge_softc {int /*<<< orphan*/  rxfreeq; int /*<<< orphan*/  xlpge_dev; } ;
struct nlm_fmn_msg {scalar_t__* msg; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_fmn_msg*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nlm_fmn_msg*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (void*) ; 

void
FUNC6(struct nlm_xlpge_softc *sc, int num)
{
	int i, size, ret, n;
	struct nlm_fmn_msg msg;
	void *ptr;

	for(i = 0; i < num; i++) {
		FUNC2(&msg, 0, sizeof(msg));
		ptr = FUNC1();
		if (!ptr) {
			FUNC0(sc->xlpge_dev, "Cannot allocate mbuf\n");
			break;
		}

		msg.msg[0] = FUNC5(ptr);
		if (msg.msg[0] == 0) {
			FUNC4("Bad ptr for %p\n", ptr);
			break;
		}
		size = 1;

		n = 0;
		while (1) {
			/* on success returns 1, else 0 */
			ret = FUNC3(sc->rxfreeq, size, 0, &msg);
			if (ret == 0)
				break;
			if (n++ > 10000) {
				FUNC4("Too many credit fails for send free desc\n");
				break;
			}
		}
	}
}