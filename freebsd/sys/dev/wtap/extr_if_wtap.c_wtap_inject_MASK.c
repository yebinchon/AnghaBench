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
struct wtap_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_rxtask; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_rxbuf; } ;
struct wtap_buf {struct mbuf* m; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WTAP_RXBUF ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wtap_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(struct wtap_softc *sc, struct mbuf *m)
{
      struct wtap_buf *bf = (struct wtap_buf *)FUNC2(sizeof(struct wtap_buf),
          M_WTAP_RXBUF, M_NOWAIT | M_ZERO);
      FUNC0(bf != NULL, ("could not allocated a new wtap_buf\n"));
      bf->m = m;

      FUNC3(&sc->sc_mtx);
      FUNC1(&sc->sc_rxbuf, bf, bf_list);
      FUNC5(sc->sc_tq, &sc->sc_rxtask);
      FUNC4(&sc->sc_mtx);
}