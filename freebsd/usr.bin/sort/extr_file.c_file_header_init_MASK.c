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
struct file_header {size_t file_pos; int /*<<< orphan*/ * si; int /*<<< orphan*/ * fr; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 struct bwstring* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bwstring*) ; 
 struct file_header* FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct file_header **fh, const char *fn, size_t file_pos)
{

	if (fh && fn) {
		struct bwstring *line;

		*fh = FUNC8(sizeof(struct file_header));
		(*fh)->file_pos = file_pos;
		(*fh)->fr = FUNC2(fn);
		if ((*fh)->fr == NULL) {
			FUNC5(fn);
			FUNC0(2, "%s", FUNC4(8));
		}
		line = FUNC3((*fh)->fr);
		if (line == NULL) {
			FUNC1((*fh)->fr);
			(*fh)->fr = NULL;
			(*fh)->si = NULL;
		} else {
			(*fh)->si = FUNC6();
			FUNC7((*fh)->si, line);
		}
	}
}