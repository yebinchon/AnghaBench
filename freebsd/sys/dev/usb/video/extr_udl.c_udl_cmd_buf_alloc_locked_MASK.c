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
struct udl_softc {int /*<<< orphan*/  sc_cmd_buf_free; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_cv; } ;
struct udl_cmd_buf {scalar_t__ off; } ;

/* Variables and functions */
 int M_WAITOK ; 
 struct udl_cmd_buf* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 

__attribute__((used)) static struct udl_cmd_buf *
FUNC3(struct udl_softc *sc, int flags)
{
	struct udl_cmd_buf *cb;

	while ((cb = FUNC0(&sc->sc_cmd_buf_free)) == NULL) {
		if (flags != M_WAITOK)
			break;
		FUNC2(&sc->sc_cv, &sc->sc_mtx);
	}
	if (cb != NULL) {
		FUNC1(&sc->sc_cmd_buf_free, cb, entry);
		cb->off = 0;
	}
	return (cb);
}