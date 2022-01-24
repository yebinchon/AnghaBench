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
struct uma_bucket_zone {int ubz_maxsize; int ubz_entries; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 struct uma_bucket_zone* bucket_zones ; 

__attribute__((used)) static int
FUNC1(int size)
{
	struct uma_bucket_zone *ubz;

	ubz = &bucket_zones[0];
	if (size > ubz->ubz_maxsize)
		return FUNC0((ubz->ubz_maxsize * ubz->ubz_entries) / size, 1);

	for (; ubz->ubz_entries != 0; ubz++)
		if (ubz->ubz_maxsize < size)
			break;
	ubz--;
	return (ubz->ubz_entries);
}