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
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  scalar_t__ hook_p ;
typedef  TYPE_2__* bt3c_softc_p ;
struct TYPE_4__ {scalar_t__ hook; int /*<<< orphan*/  node; int /*<<< orphan*/  outq; int /*<<< orphan*/  stat; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EHOSTDOWN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bt3c_send ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(hook_p hook, item_p item)
{
	bt3c_softc_p	 sc = (bt3c_softc_p)FUNC8(FUNC7(hook));
	struct mbuf	*m = NULL;
	int		 error = 0;

	if (sc == NULL) {
		error = EHOSTDOWN;
		goto out;
	}

	if (hook != sc->hook) {
		error = EINVAL;
		goto out;
	}

	FUNC2(item, m);

	FUNC0(&sc->outq);
	if (FUNC10(&sc->outq)) {
		FUNC3(sc->dev,
"Outgoing queue is full. Dropping mbuf, len=%d\n", m->m_pkthdr.len);

		FUNC4(sc->stat);

		FUNC6(m);
	} else 
		FUNC9(&sc->outq, m);
	FUNC1(&sc->outq);

	error = FUNC11(sc->node, NULL, bt3c_send, NULL, 0 /* new send */);
out:
        FUNC5(item);

	return (error);
}