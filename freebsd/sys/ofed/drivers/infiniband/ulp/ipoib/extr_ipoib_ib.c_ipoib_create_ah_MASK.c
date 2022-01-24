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
struct ipoib_dev_priv {int dummy; } ;
struct ipoib_ah {int /*<<< orphan*/  ah; int /*<<< orphan*/  ref; scalar_t__ last_send; struct ipoib_dev_priv* priv; } ;
struct ib_pd {int dummy; } ;
struct ib_ah_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_pd*,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_ah*) ; 
 struct ipoib_ah* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct ipoib_ah *FUNC6(struct ipoib_dev_priv *priv,
				 struct ib_pd *pd, struct ib_ah_attr *attr)
{
	struct ipoib_ah *ah;

	ah = FUNC4(sizeof *ah, GFP_KERNEL);
	if (!ah)
		return NULL;

	ah->priv      = priv;
	ah->last_send = 0;
	FUNC5(&ah->ref);

	ah->ah = FUNC1(pd, attr);
	if (FUNC0(ah->ah)) {
		FUNC3(ah);
		ah = NULL;
	} else
		FUNC2(priv, "Created ah %p\n", ah->ah);

	return ah;
}