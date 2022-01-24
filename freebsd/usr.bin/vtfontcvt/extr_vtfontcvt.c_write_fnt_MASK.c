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
struct file_header {char* magic; void** map_count; void* glyph_count; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  VFNT_MAP_BOLD ; 
 int /*<<< orphan*/  VFNT_MAP_BOLD_RH ; 
 int /*<<< orphan*/  VFNT_MAP_NORMAL ; 
 int /*<<< orphan*/  VFNT_MAP_NORMAL_RH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (struct file_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glyph_unique ; 
 int /*<<< orphan*/  height ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * map_folded_count ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  width ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const char *filename)
{
	FILE *fp;
	struct file_header fh = {
		.magic = "VFNT0002",
	};

	fp = FUNC1(filename, "wb");
	if (fp == NULL) {
		FUNC4(filename);
		return (1);
	}

	fh.width = width;
	fh.height = height;
	fh.glyph_count = FUNC3(glyph_unique);
	fh.map_count[0] = FUNC3(map_folded_count[0]);
	fh.map_count[1] = FUNC3(map_folded_count[1]);
	fh.map_count[2] = FUNC3(map_folded_count[2]);
	fh.map_count[3] = FUNC3(map_folded_count[3]);
	if (FUNC2(&fh, sizeof fh, 1, fp) != 1) {
		FUNC4(filename);
		FUNC0(fp);
		return (1);
	}

	if (FUNC5(fp) != 0 ||
	    FUNC6(fp, VFNT_MAP_NORMAL) != 0 ||
	    FUNC6(fp, VFNT_MAP_NORMAL_RH) != 0 ||
	    FUNC6(fp, VFNT_MAP_BOLD) != 0 ||
	    FUNC6(fp, VFNT_MAP_BOLD_RH) != 0) {
		FUNC4(filename);
		FUNC0(fp);
		return (1);
	}

	FUNC0(fp);
	return (0);
}