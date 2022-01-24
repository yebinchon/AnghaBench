#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  sa; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa; } ;
struct secasindex {TYPE_2__ dst; TYPE_1__ src; } ;
struct ipsec_softc {scalar_t__ reqid; int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ipsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipsec_softc*,int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int /*<<< orphan*/  IPSEC_DIR_OUTBOUND ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  idhash ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct secasindex* FUNC5 (struct ipsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct ipsec_softc*) ; 
 int /*<<< orphan*/  ipsec_ioctl_sx ; 
 int FUNC8 (struct ipsec_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct ipsec_softc *sc, uint32_t reqid)
{
	struct secasindex *saidx;

	FUNC9(&ipsec_ioctl_sx, SA_XLOCKED);

	if (sc->reqid == reqid && reqid != 0)
		return (0);

	if (reqid != 0) {
		/* Check that specified reqid doesn't exist */
		if (FUNC4(reqid) != 0)
			return (EEXIST);
		if (sc->reqid != 0) {
			FUNC1(sc, idhash);
			FUNC2();
		}
		sc->reqid = reqid;
		FUNC0(FUNC6(reqid), sc, idhash);
	} else {
		/* Generate new reqid */
		if (FUNC7(sc) != 0)
			return (EEXIST);
	}

	/* Tunnel isn't fully configured, just return. */
	if (sc->family == 0)
		return (0);

	saidx = FUNC5(sc, IPSEC_DIR_OUTBOUND, sc->family);
	FUNC3(saidx != NULL,
	    ("saidx is NULL, but family is %d", sc->family));
	return (FUNC8(sc, &saidx->src.sa, &saidx->dst.sa,
	    sc->reqid));
}