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
struct ecore_vlan_mac_obj {struct ecore_credit_pool_obj* vlans_pool; } ;
struct ecore_credit_pool_obj {int (* put_entry ) (struct ecore_credit_pool_obj*,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct ecore_credit_pool_obj*,int) ; 

__attribute__((used)) static bool FUNC1(struct ecore_vlan_mac_obj *o, int offset)
{
	struct ecore_credit_pool_obj *vp = o->vlans_pool;

	return vp->put_entry(vp, offset);
}