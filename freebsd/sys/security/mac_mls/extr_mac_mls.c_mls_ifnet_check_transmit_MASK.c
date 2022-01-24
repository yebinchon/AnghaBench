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
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct mac_mls* FUNC0 (struct label*) ; 
 scalar_t__ FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ifnet *ifp, struct label *ifplabel,
    struct mbuf *m, struct label *mlabel)
{
	struct mac_mls *p, *i;

	if (!mls_enabled)
		return (0);

	p = FUNC0(mlabel);
	i = FUNC0(ifplabel);

	return (FUNC1(p, i) ? 0 : EACCES);
}