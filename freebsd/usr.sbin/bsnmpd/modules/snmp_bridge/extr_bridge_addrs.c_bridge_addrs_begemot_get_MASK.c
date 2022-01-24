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
typedef  char uint8_t ;
typedef  size_t uint ;
struct tp_entry {int dummy; } ;
struct bridge_if {int dummy; } ;
struct asn_oid {size_t* subs; size_t len; } ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int IFNAMSIZ ; 
 struct tp_entry* FUNC0 (char*,struct bridge_if*) ; 
 struct bridge_if* FUNC1 (char*) ; 

__attribute__((used)) static struct tp_entry *
FUNC2(const struct asn_oid *oid, uint sub)
{
	uint i, n_len;
	uint8_t tp_addr[ETHER_ADDR_LEN];
	char bif_name[IFNAMSIZ];
	struct bridge_if *bif;

	n_len = oid->subs[sub];
	if (oid->len - sub != n_len + ETHER_ADDR_LEN + 3 ||
	    n_len >= IFNAMSIZ || oid->subs[sub + n_len + 1] != ETHER_ADDR_LEN)
		return (NULL);

	for (i = 0; i < n_len; i++)
		bif_name[i] = oid->subs[n_len + i + 1];
	bif_name[i] = '\0';

	for (i = 1; i <= ETHER_ADDR_LEN; i++)
		tp_addr[i - 1] = oid->subs[n_len + i + 1];

	if ((bif = FUNC1(bif_name)) == NULL)
		return (NULL);

	return (FUNC0(tp_addr, bif));
}