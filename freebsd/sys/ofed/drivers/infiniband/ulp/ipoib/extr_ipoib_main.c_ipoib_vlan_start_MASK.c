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
struct mbuf {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC2 (struct ifnet*) ; 
 void FUNC3 (struct ifnet*,struct ipoib_dev_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *dev)
{
	struct ipoib_dev_priv *priv;
	struct mbuf *mb;

	priv = FUNC2(dev);
	if (priv != NULL)
		return FUNC3(dev, priv);
	while (!FUNC1(&dev->if_snd)) {
		FUNC0(&dev->if_snd, mb);
		if (mb == NULL)
			break;
		FUNC5(mb);
		FUNC4(dev, IFCOUNTER_OERRORS, 1);
	}
}