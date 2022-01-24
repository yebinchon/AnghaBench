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
struct ucred {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 struct mac_biba* FUNC0 (struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 

__attribute__((used)) static void
FUNC2(struct ucred *cred, struct ifnet *ifp,
    struct label *ifplabel, struct label *newlabel)
{
	struct mac_biba *source, *dest;

	source = FUNC0(newlabel);
	dest = FUNC0(ifplabel);

	FUNC1(source, dest);
}