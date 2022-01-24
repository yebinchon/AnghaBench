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
struct netmap_priv_d {scalar_t__ np_refs; int /*<<< orphan*/  np_ifp; struct netmap_adapter* np_na; } ;
struct netmap_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_priv_d*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_priv_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_priv_d*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(struct netmap_priv_d *priv)
{
	struct netmap_adapter *na = priv->np_na;

	/* number of active references to this fd */
	if (--priv->np_refs > 0) {
		return;
	}
	FUNC4();
	if (na) {
		FUNC1(priv);
	}
	FUNC2(na, priv->np_ifp);
	FUNC0(priv, sizeof(*priv));	/* for safety */
	FUNC3(priv);
}