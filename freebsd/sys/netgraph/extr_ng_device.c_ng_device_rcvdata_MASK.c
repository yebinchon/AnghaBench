#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  ngd_mtx; int /*<<< orphan*/  readq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NGDF_RWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC12(hook_p hook, item_p item)
{
	priv_p priv = FUNC6(FUNC5(hook));
	struct mbuf *m;

	DBG;

	FUNC2(item, m);
	FUNC3(item);

	FUNC0(&priv->readq);
	if (FUNC8(&priv->readq)) {
		FUNC1(&priv->readq);
		FUNC4(m);
		return (ENOBUFS);
	}

	FUNC7(&priv->readq, m);
	FUNC1(&priv->readq);
	FUNC9(&priv->ngd_mtx);
	if (priv->flags & NGDF_RWAIT) {
		priv->flags &= ~NGDF_RWAIT;
		FUNC11(priv);
	}
	FUNC10(&priv->ngd_mtx);

	return(0);
}