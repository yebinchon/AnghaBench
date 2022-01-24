#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct table {unsigned int offset_max; int /*<<< orphan*/  gpu_prefix; } ;
struct offset {int dummy; } ;
struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  REG_EXTENDED ; 
 int REG_NOMATCH ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gpu_name ; 
 struct offset* FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (char*) ; 
 void* FUNC11 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (struct table*) ; 
 int /*<<< orphan*/  FUNC13 (struct table*,struct offset*) ; 

__attribute__((used)) static int FUNC14(struct table *t, const char *filename)
{
	FILE *file;
	regex_t mask_rex;
	regmatch_t match[4];
	char buf[1024];
	size_t end;
	int len;
	int done = 0;
	int r;
	unsigned o;
	struct offset *offset;
	char last_reg_s[10];
	int last_reg;

	if (FUNC7
	    (&mask_rex, "(0x[0-9a-fA-F]*) *([_a-zA-Z0-9]*)", REG_EXTENDED)) {
		FUNC3(stderr, "Failed to compile regular expression\n");
		return -1;
	}
	file = FUNC2(filename, "r");
	if (file == NULL) {
		FUNC3(stderr, "Failed to open: %s\n", filename);
		return -1;
	}
	FUNC4(file, 0, SEEK_END);
	end = FUNC5(file);
	FUNC4(file, 0, SEEK_SET);

	/* get header */
	if (FUNC1(buf, 1024, file) == NULL) {
		FUNC0(file);
		return -1;
	}

	/* first line will contain the last register
	 * and gpu name */
	FUNC9(buf, "%s %s", gpu_name, last_reg_s);
	t->gpu_prefix = gpu_name;
	last_reg = FUNC11(last_reg_s, NULL, 16);

	do {
		if (FUNC1(buf, 1024, file) == NULL) {
			FUNC0(file);
			return -1;
		}
		len = FUNC10(buf);
		if (FUNC5(file) == end)
			done = 1;
		if (len) {
			r = FUNC8(&mask_rex, buf, 4, match, 0);
			if (r == REG_NOMATCH) {
			} else if (r) {
				FUNC3(stderr,
					"Error matching regular expression %d in %s\n",
					r, filename);
				FUNC0(file);
				return -1;
			} else {
				buf[match[0].rm_eo] = 0;
				buf[match[1].rm_eo] = 0;
				buf[match[2].rm_eo] = 0;
				o = FUNC11(&buf[match[1].rm_so], NULL, 16);
				offset = FUNC6(o);
				FUNC13(t, offset);
				if (o > t->offset_max)
					t->offset_max = o;
			}
		}
	} while (!done);
	FUNC0(file);
	if (t->offset_max < last_reg)
		t->offset_max = last_reg;
	return FUNC12(t);
}