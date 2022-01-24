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
struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_gpt_table {scalar_t__ mbr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOSMAGIC ; 
 scalar_t__ DOSMAGICOFFSET ; 
 scalar_t__ DOSPARTOFF ; 
 int DOSPARTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int NDOSPART ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct g_part_gpt_table *table, struct g_provider *pp)
{

	FUNC1(table->mbr + DOSPARTOFF, DOSPARTSIZE * NDOSPART);
	FUNC2(table->mbr, 0, 0xee, 1,
	    FUNC0(pp->mediasize / pp->sectorsize - 1, UINT32_MAX));
	FUNC3(table->mbr + DOSMAGICOFFSET, DOSMAGIC);
}