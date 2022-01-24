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
typedef  size_t uint8_t ;
typedef  size_t uint32_t ;
typedef  size_t uint ;
struct asn_oid {size_t len; int* subs; } ;

/* Variables and functions */
 size_t IEEE80211_ADDR_LEN ; 
 int FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(struct asn_oid *oid, uint sub, char *wname, uint8_t *mac)
{
	uint32_t i;

	oid->len = sub + FUNC0(wname) + IEEE80211_ADDR_LEN + 2;
	oid->subs[sub] = FUNC0(wname);
	for (i = 1; i <= FUNC0(wname); i++)
		oid->subs[sub + i] = wname[i - 1];

	sub += FUNC0(wname) + 1;
	oid->subs[sub] = IEEE80211_ADDR_LEN;
	for (i = 1; i <= IEEE80211_ADDR_LEN; i++)
		oid->subs[sub + i] = mac[i - 1];
}