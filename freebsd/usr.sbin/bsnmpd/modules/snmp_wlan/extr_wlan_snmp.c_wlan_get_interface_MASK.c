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
typedef  int /*<<< orphan*/  uint ;
struct wlan_iface {int dummy; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 struct wlan_iface* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct asn_oid const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct wlan_iface *
FUNC2(const struct asn_oid *oid, uint sub)
{
	uint8_t wname[IFNAMSIZ];

	if (FUNC1(oid, sub, wname) == NULL)
		return (NULL);

	return (FUNC0(wname));
}