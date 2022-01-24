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

/* Variables and functions */
 int V_MODE_MAP_SIZE ; 
 int V_MODE_PARAM_SIZE ; 

__attribute__((used)) static void
FUNC0(u_char *map[], u_char *table, int max)
{
    int i;

    for(i = 0; i < max; ++i)
	map[i] = table + i*V_MODE_PARAM_SIZE;
    for(; i < V_MODE_MAP_SIZE; ++i)
	map[i] = NULL;
}