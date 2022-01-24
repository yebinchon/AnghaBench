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
typedef  size_t uint ;
struct bridge_if {int dummy; } ;
struct asn_oid {size_t len; int* subs; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 struct bridge_if* FUNC0 (char*) ; 

__attribute__((used)) static struct bridge_if *
FUNC1(const struct asn_oid *oid, uint sub)
{
	uint i;
	char bif_name[IFNAMSIZ];

	if (oid->len - sub != oid->subs[sub] + 1 || oid->subs[sub] >= IFNAMSIZ)
		return (NULL);

	for (i = 0; i < oid->subs[sub]; i++)
		bif_name[i] = oid->subs[sub + i + 1];
	bif_name[i] = '\0';

	return (FUNC0(bif_name));
}