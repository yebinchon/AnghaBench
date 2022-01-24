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
typedef  int /*<<< orphan*/  uint32_t ;
struct ipsec_softc {int /*<<< orphan*/  reqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ipsec_softc*,int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int IPSEC_REQID_TRYCNT ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  idhash ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipsec_ioctl_sx ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ipsec_softc *sc)
{
	uint32_t reqid;
	int trycount;

	FUNC4(&ipsec_ioctl_sx, SA_XLOCKED);
	if (sc->reqid != 0) /* already initialized */
		return (0);

	trycount = IPSEC_REQID_TRYCNT;
	while (--trycount > 0) {
		reqid = FUNC3();
		if (FUNC1(reqid) == 0)
			break;
	}
	if (trycount == 0)
		return (EEXIST);
	sc->reqid = reqid;
	FUNC0(FUNC2(reqid), sc, idhash);
	return (0);
}