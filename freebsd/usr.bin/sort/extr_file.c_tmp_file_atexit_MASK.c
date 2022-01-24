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
struct CLEANABLE_FILE {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct CLEANABLE_FILE*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  files ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct CLEANABLE_FILE* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  tmp_files ; 
 int /*<<< orphan*/  tmp_files_sem ; 

void
FUNC5(const char *tmp_file)
{

	if (tmp_file) {
		FUNC2(&tmp_files_sem);
		struct CLEANABLE_FILE *item =
		    FUNC3(sizeof(struct CLEANABLE_FILE));
		item->fn = FUNC4(tmp_file);
		FUNC0(&tmp_files, item, files);
		FUNC1(&tmp_files_sem);
	}
}