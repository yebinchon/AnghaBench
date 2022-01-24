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
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {scalar_t__ if_type; } ;

/* Variables and functions */
 scalar_t__ IFT_LOOP ; 
 int MAC_MLS_TYPE_EQUAL ; 
 int MAC_MLS_TYPE_LOW ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_mls*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp, struct label *ifplabel)
{
	struct mac_mls *dest;
	int type;

	dest = FUNC0(ifplabel);

	if (ifp->if_type == IFT_LOOP)
		type = MAC_MLS_TYPE_EQUAL;
	else
		type = MAC_MLS_TYPE_LOW;

	FUNC1(dest, type, 0, NULL);
	FUNC2(dest, type, 0, NULL, type, 0, NULL);
}