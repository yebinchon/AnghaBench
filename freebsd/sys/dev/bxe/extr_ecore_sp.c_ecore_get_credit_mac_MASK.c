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
struct ecore_vlan_mac_obj {struct ecore_credit_pool_obj* macs_pool; } ;
struct ecore_credit_pool_obj {int (* get ) (struct ecore_credit_pool_obj*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ecore_credit_pool_obj*,int) ; 

__attribute__((used)) static bool FUNC2(struct ecore_vlan_mac_obj *o)
{
	struct ecore_credit_pool_obj *mp = o->macs_pool;

	FUNC0(!mp);

	return mp->get(mp, 1);
}