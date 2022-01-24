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
struct ifnet {int /*<<< orphan*/  if_amcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_ALLMULTI ; 
 int FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int
FUNC1(struct ifnet *ifp, int onswitch)
{

	return (FUNC0(ifp, IFF_ALLMULTI, 0, &ifp->if_amcount, onswitch));
}