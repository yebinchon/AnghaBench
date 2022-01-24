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
struct iavf_vlan_filter {int dummy; } ;
struct iavf_sc {struct iavf_vlan_filter* vlan_filters; struct iavf_vlan_filter* mac_filters; } ;
typedef  struct iavf_vlan_filter iavf_mac_filter ;

/* Variables and functions */
 int /*<<< orphan*/  M_IAVF ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_vlan_filter*) ; 
 struct iavf_vlan_filter* FUNC1 (struct iavf_vlan_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_vlan_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_vlan_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct iavf_sc *sc)
{
	struct iavf_mac_filter *f;
	struct iavf_vlan_filter *v;

	while (!FUNC0(sc->mac_filters)) {
		f = FUNC1(sc->mac_filters);
		FUNC2(sc->mac_filters, next);
		FUNC3(f, M_IAVF);
	}
	FUNC3(sc->mac_filters, M_IAVF);
	while (!FUNC0(sc->vlan_filters)) {
		v = FUNC1(sc->vlan_filters);
		FUNC2(sc->vlan_filters, next);
		FUNC3(v, M_IAVF);
	}
	FUNC3(sc->vlan_filters, M_IAVF);
}