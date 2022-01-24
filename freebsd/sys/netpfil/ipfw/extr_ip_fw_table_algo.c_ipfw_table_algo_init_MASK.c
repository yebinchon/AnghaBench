#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct table_algo {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 TYPE_1__ addr_hash ; 
 TYPE_1__ addr_kfib ; 
 TYPE_1__ addr_radix ; 
 TYPE_1__ flow_hash ; 
 TYPE_1__ iface_idx ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*,TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__ number_array ; 

void
FUNC1(struct ip_fw_chain *ch)
{
	size_t sz;

	/*
	 * Register all algorithms presented here.
	 */
	sz = sizeof(struct table_algo);
	FUNC0(ch, &addr_radix, sz, &addr_radix.idx);
	FUNC0(ch, &addr_hash, sz, &addr_hash.idx);
	FUNC0(ch, &iface_idx, sz, &iface_idx.idx);
	FUNC0(ch, &number_array, sz, &number_array.idx);
	FUNC0(ch, &flow_hash, sz, &flow_hash.idx);
	FUNC0(ch, &addr_kfib, sz, &addr_kfib.idx);
}