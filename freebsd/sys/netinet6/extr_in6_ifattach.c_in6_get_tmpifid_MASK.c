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
typedef  int /*<<< orphan*/  u_int8_t ;
struct nd_ifinfo {int /*<<< orphan*/  const* randomid; int /*<<< orphan*/ * randomseed1; int /*<<< orphan*/  randomseed0; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  nullbuf ;

/* Variables and functions */
 struct nd_ifinfo* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int
FUNC5(struct ifnet *ifp, u_int8_t *retbuf,
    const u_int8_t *baseid, int generate)
{
	u_int8_t nullbuf[8];
	struct nd_ifinfo *ndi = FUNC0(ifp);

	FUNC3(nullbuf, sizeof(nullbuf));
	if (FUNC1(ndi->randomid, nullbuf, sizeof(nullbuf)) == 0) {
		/* we've never created a random ID.  Create a new one. */
		generate = 1;
	}

	if (generate) {
		FUNC2(baseid, ndi->randomseed1, sizeof(ndi->randomseed1));

		/* generate_tmp_ifid will update seedn and buf */
		(void)FUNC4(ndi->randomseed0, ndi->randomseed1,
		    ndi->randomid);
	}
	FUNC2(ndi->randomid, retbuf, 8);

	return (0);
}