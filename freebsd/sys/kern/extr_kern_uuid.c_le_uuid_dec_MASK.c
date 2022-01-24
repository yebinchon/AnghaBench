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
typedef  int /*<<< orphan*/  u_char ;
struct uuid {int clock_seq_hi_and_reserved; int clock_seq_low; int* node; void* time_hi_and_version; void* time_mid; int /*<<< orphan*/  time_low; } ;

/* Variables and functions */
 int _UUID_NODE_LEN ; 
 void* FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 

void
FUNC2(void const *buf, struct uuid *uuid)
{
	u_char const *p;
	int i;

	p = buf;
	uuid->time_low = FUNC1(p);
	uuid->time_mid = FUNC0(p + 4);
	uuid->time_hi_and_version = FUNC0(p + 6);
	uuid->clock_seq_hi_and_reserved = p[8];
	uuid->clock_seq_low = p[9];
	for (i = 0; i < _UUID_NODE_LEN; i++)
		uuid->node[i] = p[10 + i];
}