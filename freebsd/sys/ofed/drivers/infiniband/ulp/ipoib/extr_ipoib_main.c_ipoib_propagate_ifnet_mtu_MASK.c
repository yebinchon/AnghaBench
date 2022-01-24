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
struct ipoib_dev_priv {struct ifnet* dev; } ;
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
struct ifnet {int if_mtu; int /*<<< orphan*/  if_vnet; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ipoib_dev_priv *priv, int new_mtu,
    bool propagate)
{
	struct ifnet *ifp;
	struct ifreq ifr;
	int error;

	ifp = priv->dev;
	if (ifp->if_mtu == new_mtu)
		return (0);
	if (propagate) {
		FUNC4(ifr.ifr_name, FUNC2(ifp), IFNAMSIZ);
		ifr.ifr_mtu = new_mtu;
		FUNC1(ifp->if_vnet);
		error = FUNC3(SIOCSIFMTU, ifp, (caddr_t)&ifr, curthread);
		FUNC0();
	} else {
		ifp->if_mtu = new_mtu;
		error = 0;
	}
	return (error);
}