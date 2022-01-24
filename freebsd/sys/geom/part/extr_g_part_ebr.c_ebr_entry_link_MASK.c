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
typedef  scalar_t__ uint32_t ;
typedef  int u_char ;
struct g_part_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_part_table*,scalar_t__,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct g_part_table *table, uint32_t start, uint32_t end,
   u_char *buf)
{

	buf[0] = 0 /* dp_flag */;
	FUNC0(table, start, &buf[3] /* dp_scyl */, &buf[1] /* dp_shd */,
	    &buf[2] /* dp_ssect */);
	buf[4] = 5 /* dp_typ */;
	FUNC0(table, end, &buf[7] /* dp_ecyl */, &buf[5] /* dp_ehd */,
	    &buf[6] /* dp_esect */);
	FUNC1(buf + 8, start);
	FUNC1(buf + 12, end - start + 1);
}