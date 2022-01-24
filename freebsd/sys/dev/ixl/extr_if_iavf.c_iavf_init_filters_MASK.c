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
struct vlan_list {int dummy; } ;
struct mac_list {int dummy; } ;
struct iavf_sc {void* vlan_filters; void* mac_filters; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IAVF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct iavf_sc *sc)
{
	sc->mac_filters = FUNC1(sizeof(struct mac_list),
	    M_IAVF, M_WAITOK | M_ZERO);
	FUNC0(sc->mac_filters);
	sc->vlan_filters = FUNC1(sizeof(struct vlan_list),
	    M_IAVF, M_WAITOK | M_ZERO);
	FUNC0(sc->vlan_filters);
}