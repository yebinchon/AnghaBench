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
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct ntb_net_ctx {struct ifmedia media; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IFM_ETHER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ntb_net_ctx* FUNC1 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC2(struct ifnet *ifp)
{
	struct ntb_net_ctx *sc = FUNC1(ifp);
	struct ifmedia *ifm = &sc->media;

	if (FUNC0(ifm->ifm_media) != IFM_ETHER)
		return (EINVAL);

	return (0);
}