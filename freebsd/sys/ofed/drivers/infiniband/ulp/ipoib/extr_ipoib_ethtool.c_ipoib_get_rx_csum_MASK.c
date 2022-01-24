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
typedef  int u32 ;
struct ipoib_dev_priv {int /*<<< orphan*/  flags; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_CM ; 
 int /*<<< orphan*/  IPOIB_FLAG_CSUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC1(struct ifnet *dev)
{
	struct ipoib_dev_priv *priv = dev->if_softc;
	return FUNC0(IPOIB_FLAG_CSUM, &priv->flags) &&
		!FUNC0(IPOIB_FLAG_ADMIN_CM, &priv->flags);
}