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
struct g_provider {struct g_part_entry* private; struct g_geom* geom; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct g_geom {struct g_part_table* softc; } ;
struct bio {scalar_t__ bio_error; char* bio_data; size_t bio_length; struct g_provider* bio_to; struct bio* bio_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_part_table*,struct g_part_entry*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 size_t FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3(struct bio *bp)
{
	struct g_geom *gp;
	struct g_part_entry *entry;
	struct g_part_table *table;
	struct g_provider *pp;
	struct bio *pbp;

	pbp = bp->bio_parent;
	pp = pbp->bio_to;
	gp = pp->geom;
	table = gp->softc;
	entry = pp->private;

	if (bp->bio_error == 0) {
		char *end;
		size_t len, remainder;
		len = FUNC2(bp->bio_data, "/", bp->bio_length);
		if (len < bp->bio_length) {
			end = bp->bio_data + len;
			remainder = bp->bio_length - len;
			FUNC0(table, entry, end, remainder);
		}
	}
	FUNC1(bp);
}