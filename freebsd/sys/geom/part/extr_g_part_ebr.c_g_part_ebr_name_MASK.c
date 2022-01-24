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
struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int) ; 

__attribute__((used)) static const char *
FUNC1(struct g_part_table *table, struct g_part_entry *entry,
    char *buf, size_t bufsz)
{

	FUNC0(buf, bufsz, "+%08u", entry->gpe_index);
	return (buf);
}