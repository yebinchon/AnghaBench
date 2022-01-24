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
typedef  int u8 ;
struct sdp_hh {int ipv_cap; } ;

/* Variables and functions */

__attribute__((used)) static inline void FUNC0(struct sdp_hh *hh, u8 ip_ver)
{
	hh->ipv_cap = (ip_ver << 4) | (hh->ipv_cap & 0xF);
}