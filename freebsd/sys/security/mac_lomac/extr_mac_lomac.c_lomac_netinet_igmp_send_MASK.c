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
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_LOMAC_TYPE_EQUAL ; 
 struct mac_lomac* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_lomac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{
	struct mac_lomac *dest;

	dest = FUNC0(mlabel);

	FUNC1(dest, MAC_LOMAC_TYPE_EQUAL, 0);
}