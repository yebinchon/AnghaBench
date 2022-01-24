#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fp; int /*<<< orphan*/  file_name; } ;
typedef  TYPE_1__ file_info_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* last ; 
 int no_files ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  qflag ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC9(file_info_t *file)
{
	int ch;

	while ((ch = FUNC4(file->fp)) != EOF) {
		if (last != file && no_files > 1) {
			if (!qflag)
				FUNC7(file->file_name, 1);
			last = file;
		}
		if (FUNC8(ch) == EOF)
			FUNC6();
	}
	(void)FUNC3(stdout);
	if (FUNC2(file->fp)) {
		FUNC1(file->fp);
		file->fp = NULL;
		FUNC5(file->file_name);
		return 0;
	}
	FUNC0(file->fp);
	return 1;
}