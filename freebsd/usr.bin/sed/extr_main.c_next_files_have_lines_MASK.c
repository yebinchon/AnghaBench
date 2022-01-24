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
struct s_flist {int /*<<< orphan*/  fname; struct s_flist* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct s_flist* files ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct s_flist *file;
	FILE *file_fd;
	int ch;

	file = files;
	while ((file = file->next) != NULL) {
		if ((file_fd = FUNC1(file->fname, "r")) == NULL)
			continue;

		if ((ch = FUNC2(file_fd)) != EOF) {
			/*
			 * This next file has content, therefore current
			 * file doesn't contains the last line.
			 */
			FUNC3(ch, file_fd);
			FUNC0(file_fd);
			return (1);
		}

		FUNC0(file_fd);
	}

	return (0);
}