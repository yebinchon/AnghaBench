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
struct dn_ht {int buckets; void** ht; int ofs; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int DNHT_SCAN_DEL ; 
 int DNHT_SCAN_END ; 

int
FUNC0(struct dn_ht *ht, int *bucket, int (*fn)(void *, void *),
		 void *arg)
{
	int i, ret, found = 0;
	void **curp, *cur, *next;

	if (ht == NULL || fn == NULL)
		return 0;
	if (*bucket > ht->buckets)
		*bucket = 0;
	i = *bucket;

	curp = &ht->ht[i];
	while ( (cur = *curp) != NULL) {
		next = *(void **)((char *)cur + ht->ofs);
		ret = fn(cur, arg);
		if (ret & DNHT_SCAN_DEL) {
			found++;
			ht->entries--;
			*curp = next;
		} else {
			curp = (void **)((char *)cur + ht->ofs);
		}
		if (ret & DNHT_SCAN_END)
			return found;
	}
	return found;
}