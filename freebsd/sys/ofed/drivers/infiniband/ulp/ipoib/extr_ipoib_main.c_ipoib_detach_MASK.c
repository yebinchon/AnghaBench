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
struct ipoib_dev_priv {int gone; struct ifnet* dev; int /*<<< orphan*/  unit; int /*<<< orphan*/  flags; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_SUBINTERFACE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  ipoib_unrhdr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ipoib_dev_priv *priv)
{
	struct ifnet *dev;

	dev = priv->dev;
	if (!FUNC6(IPOIB_FLAG_SUBINTERFACE, &priv->flags)) {
		priv->gone = 1;
		FUNC1(dev);
		FUNC4(dev);
		FUNC5(dev);
		FUNC3(ipoib_unrhdr, priv->unit);
	} else
		FUNC0(priv->dev, NULL);

	FUNC2(priv, M_TEMP);
}