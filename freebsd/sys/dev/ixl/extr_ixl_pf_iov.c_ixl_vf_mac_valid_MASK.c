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
typedef  int /*<<< orphan*/  uint8_t ;
struct ixl_vf {int vf_flags; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int VF_FLAG_SET_MAC_CAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(struct ixl_vf *vf, const uint8_t *addr)
{

	if (FUNC3(addr) || FUNC2(addr))
		return (EINVAL);

	/*
	 * If the VF is not allowed to change its MAC address, don't let it
	 * set a MAC filter for an address that is not a multicast address and
	 * is not its assigned MAC.
	 */
	if (!(vf->vf_flags & VF_FLAG_SET_MAC_CAP) &&
	    !(FUNC0(addr) || FUNC1(addr, vf->mac)))
		return (EPERM);

	return (0);
}