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
typedef  int /*<<< orphan*/  uint32_t ;
struct vxlan_softc {scalar_t__ vxl_ftable_timeout; } ;
struct vxlan_ftable_entry {int /*<<< orphan*/  vxlfe_raddr; int /*<<< orphan*/  vxlfe_mac; scalar_t__ vxlfe_expire; int /*<<< orphan*/  vxlfe_flags; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr const*) ; 

__attribute__((used)) static void
FUNC2(struct vxlan_softc *sc, struct vxlan_ftable_entry *fe,
    const uint8_t *mac, const struct sockaddr *sa, uint32_t flags)
{

	fe->vxlfe_flags = flags;
	fe->vxlfe_expire = time_uptime + sc->vxl_ftable_timeout;
	FUNC0(fe->vxlfe_mac, mac, ETHER_ADDR_LEN);
	FUNC1(&fe->vxlfe_raddr, sa);
}