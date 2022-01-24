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
struct file_mapping {int /*<<< orphan*/  length; int /*<<< orphan*/  destination; int /*<<< orphan*/  source; } ;
struct file_header {int /*<<< orphan*/ * map_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file_mapping*,int,int,int /*<<< orphan*/ ) ; 
 char** map_names ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static int
FUNC5(struct file_header *fh, int map_index)
{
	struct file_mapping fm;
	unsigned int nmappings, i, col = 0;

	
	nmappings = FUNC1(fh->map_count[map_index]);

	if (nmappings == 0)
		return (0);

	FUNC4("\nstatic struct vt_font_map font_mapping_%s[%u] = {",
	    map_names[map_index], nmappings);

	for (i = 0; i < nmappings; i++) {
		if (FUNC2(&fm, sizeof fm, 1, stdin) != 1) {
			FUNC3("mapping");
			return (1);
		}

		FUNC4(col == 0 ? "\n\t" : " ");
		FUNC4("{ 0x%04x, 0x%04x, 0x%02x },",
		    FUNC1(fm.source), FUNC0(fm.destination),
		    FUNC0(fm.length));
		col = (col + 1) % 2;
	}

	FUNC4("\n};\n");

	return (0);
}