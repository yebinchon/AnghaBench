#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_char ;
struct mbuf {int dummy; } ;
struct lp_data {size_t* sc_ifbuf; scalar_t__ sc_iferrs; TYPE_1__* sc_ifp; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int if_flags; int if_mtu; int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_fib; int /*<<< orphan*/  if_bpf; } ;

/* Variables and functions */
 int CLPIPHDRLEN ; 
 int /*<<< orphan*/  IFCOUNTER_IBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_LINK0 ; 
 int LPIPHDRLEN ; 
 int LPIP_SHAKE ; 
 scalar_t__ LPMAXERRS ; 
 int LPMAXSPIN2 ; 
 int MLPIPHDRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETISR_IP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct mbuf*) ; 
 struct mbuf* FUNC8 (size_t*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int* trecvh ; 
 int* trecvl ; 

__attribute__((used)) static void
FUNC16(void *arg)
{
	struct lp_data *sc = arg;
	device_t ppbus = FUNC3(sc->sc_dev);
	int len, j;
	u_char *bp;
	u_char c, cl;
	struct mbuf *top;

	FUNC10(ppbus);
	if (sc->sc_ifp->if_flags & IFF_LINK0) {

		/* Ack. the request */
		FUNC15(ppbus, 0x01);

		/* Get the packet length */
		j = FUNC2(LPMAXSPIN2, ppbus);
		if (j == -1)
			goto err;
		len = j;
		j = FUNC2(LPMAXSPIN2, ppbus);
		if (j == -1)
			goto err;
		len = len + (j << 8);
		if (len > sc->sc_ifp->if_mtu + MLPIPHDRLEN)
			goto err;

		bp = sc->sc_ifbuf;

		while (len--) {
			j = FUNC2(LPMAXSPIN2, ppbus);
			if (j == -1) {
				goto err;
			}
			*bp++ = j;
		}

		/* Get and ignore checksum */
		j = FUNC2(LPMAXSPIN2, ppbus);
		if (j == -1) {
			goto err;
		}

		len = bp - sc->sc_ifbuf;
		if (len <= CLPIPHDRLEN)
			goto err;

		sc->sc_iferrs = 0;

		len -= CLPIPHDRLEN;
		FUNC4(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);
		FUNC4(sc->sc_ifp, IFCOUNTER_IBYTES, len);
		top = FUNC8(sc->sc_ifbuf + CLPIPHDRLEN, len, 0, sc->sc_ifp,
		    0);
		if (top) {
			FUNC13(ppbus);
			if (FUNC1(sc->sc_ifp->if_bpf))
				FUNC7(sc->sc_ifp, top);

			FUNC0(top, sc->sc_ifp->if_fib);

			/* mbuf is free'd on failure. */
			FUNC9(NETISR_IP, top);
			FUNC11(ppbus);
		}
		return;
	}
	while ((FUNC12(ppbus) & LPIP_SHAKE)) {
		len = sc->sc_ifp->if_mtu + LPIPHDRLEN;
		bp  = sc->sc_ifbuf;
		while (len--) {

			cl = FUNC12(ppbus);
			FUNC15(ppbus, 8);

			j = LPMAXSPIN2;
			while ((FUNC12(ppbus) & LPIP_SHAKE))
				if (!--j)
					goto err;

			c = FUNC12(ppbus);
			FUNC15(ppbus, 0);

			*bp++= trecvh[cl] | trecvl[c];

			j = LPMAXSPIN2;
			while (!((cl = FUNC12(ppbus)) & LPIP_SHAKE)) {
				if (cl != c &&
				    (((cl = FUNC12(ppbus)) ^ 0xb8) & 0xf8) ==
				    (c & 0xf8))
					goto end;
				if (!--j)
					goto err;
			}
		}

	end:
		len = bp - sc->sc_ifbuf;
		if (len <= LPIPHDRLEN)
			goto err;

		sc->sc_iferrs = 0;

		len -= LPIPHDRLEN;
		FUNC4(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);
		FUNC4(sc->sc_ifp, IFCOUNTER_IBYTES, len);
		top = FUNC8(sc->sc_ifbuf + LPIPHDRLEN, len, 0, sc->sc_ifp,
		    0);
		if (top) {
			FUNC13(ppbus);
			if (FUNC1(sc->sc_ifp->if_bpf))
				FUNC7(sc->sc_ifp, top);

			FUNC0(top, sc->sc_ifp->if_fib);

			/* mbuf is free'd on failure. */
			FUNC9(NETISR_IP, top);
			FUNC11(ppbus);
		}
	}
	return;

err:
	FUNC15(ppbus, 0);
	FUNC6("R");
	FUNC4(sc->sc_ifp, IFCOUNTER_IERRORS, 1);
	sc->sc_iferrs++;

	/*
	 * We are not able to send receive anything for now,
	 * so stop wasting our time
	 */
	if (sc->sc_iferrs > LPMAXERRS) {
		FUNC5(sc->sc_ifp, "Too many errors, Going off-line.\n");
		FUNC14(ppbus, 0x00);
		sc->sc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		sc->sc_iferrs = 0;
	}
}