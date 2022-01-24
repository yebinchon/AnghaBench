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
struct tuntap_softc {int dummy; } ;
struct knote {int /*<<< orphan*/  kn_data; struct tuntap_softc* kn_hook; } ;
struct ifnet {int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 struct ifnet* FUNC0 (struct tuntap_softc*) ; 

__attribute__((used)) static int
FUNC1(struct knote *kn, long hint)
{
	struct tuntap_softc	*tp = kn->kn_hook;
	struct ifnet	*ifp = FUNC0(tp);

	kn->kn_data = ifp->if_mtu;

	return (1);
}