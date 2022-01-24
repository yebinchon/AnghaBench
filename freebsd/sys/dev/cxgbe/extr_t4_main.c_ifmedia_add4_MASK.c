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
struct ifmedia {int dummy; } ;

/* Variables and functions */
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifmedia*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(struct ifmedia *ifm, int m)
{

	FUNC0(ifm, m, 0, NULL);
	FUNC0(ifm, m | IFM_ETH_TXPAUSE, 0, NULL);
	FUNC0(ifm, m | IFM_ETH_RXPAUSE, 0, NULL);
	FUNC0(ifm, m | IFM_ETH_TXPAUSE | IFM_ETH_RXPAUSE, 0, NULL);
}