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
typedef  int /*<<< orphan*/  u8 ;
struct ixl_vsi {int /*<<< orphan*/  ftl; } ;
struct ixl_mac_filter {int flags; int /*<<< orphan*/  vlan; int /*<<< orphan*/  macaddr; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IXL_FILTER_ADD ; 
 int IXL_FILTER_USED ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ixl_mac_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixl_mac_filter* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static inline struct ixl_mac_filter *
FUNC3(struct ixl_vsi *vsi, const u8 *macaddr, s16 vlan)
{
	struct ixl_mac_filter  *f;

	/* create a new empty filter */
	f = FUNC2(sizeof(struct ixl_mac_filter),
	    M_DEVBUF, M_NOWAIT | M_ZERO);
	if (f) {
		FUNC0(&vsi->ftl, f, next);
		FUNC1(macaddr, f->macaddr, ETHER_ADDR_LEN);
		f->vlan = vlan;
		f->flags |= (IXL_FILTER_ADD | IXL_FILTER_USED);
	}

	return (f);
}