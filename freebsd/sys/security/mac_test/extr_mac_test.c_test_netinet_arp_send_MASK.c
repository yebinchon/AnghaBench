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
struct label {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_IFNET ; 
 int /*<<< orphan*/  MAGIC_MBUF ; 
 int /*<<< orphan*/  netinet_arp_send ; 

__attribute__((used)) static void
FUNC2(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{

	FUNC1(ifplabel, MAGIC_IFNET);
	FUNC1(mlabel, MAGIC_MBUF);
	FUNC0(netinet_arp_send);
}