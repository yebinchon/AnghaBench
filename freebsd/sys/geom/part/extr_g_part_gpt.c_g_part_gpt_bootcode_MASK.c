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
struct g_part_parms {int /*<<< orphan*/  gpp_codeptr; int /*<<< orphan*/  gpp_codesize; } ;
struct g_part_gpt_table {int /*<<< orphan*/  mbr; } ;

/* Variables and functions */
 size_t DOSPARTOFF ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC3(struct g_part_table *basetable, struct g_part_parms *gpp)
{
	struct g_part_gpt_table *table;
	size_t codesz;

	codesz = DOSPARTOFF;
	table = (struct g_part_gpt_table *)basetable;
	FUNC2(table->mbr, codesz);
	codesz = FUNC0(codesz, gpp->gpp_codesize);
	if (codesz > 0)
		FUNC1(gpp->gpp_codeptr, table->mbr, codesz);
	return (0);
}