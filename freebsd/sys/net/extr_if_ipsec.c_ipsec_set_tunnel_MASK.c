#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr {scalar_t__ sa_family; } ;
struct secpolicy {int dummy; } ;
struct ipsec_softc {scalar_t__ family; TYPE_1__* ifp; struct secpolicy** sp; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ipsec_softc*,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IPSEC_SPCOUNT ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct ipsec_softc*) ; 
 int /*<<< orphan*/  ipsec_ioctl_sx ; 
 scalar_t__ FUNC2 (struct ipsec_softc*,struct secpolicy**,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC5 (struct secpolicy**) ; 
 scalar_t__ FUNC6 (struct secpolicy**,int) ; 
 int /*<<< orphan*/  srchash ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ipsec_softc *sc, struct sockaddr *src,
    struct sockaddr *dst, uint32_t reqid)
{
	struct secpolicy *sp[IPSEC_SPCOUNT];
	int i;

	FUNC7(&ipsec_ioctl_sx, SA_XLOCKED);

	/* Allocate SP with new addresses. */
	if (FUNC2(sc, sp, src, dst, reqid) == 0) {
		/* Add new policies to SPDB */
		if (FUNC6(sp, IPSEC_SPCOUNT) != 0) {
			for (i = 0; i < IPSEC_SPCOUNT; i++)
				FUNC5(&sp[i]);
			return (EAGAIN);
		}
		if (sc->family != 0)
			FUNC1(sc);
		for (i = 0; i < IPSEC_SPCOUNT; i++)
			sc->sp[i] = sp[i];
		sc->family = src->sa_family;
		FUNC0(FUNC4(src), sc, srchash);
	} else {
		sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		return (ENOMEM);
	}
	FUNC3(sc);
	return (0);
}