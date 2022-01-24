#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packdir ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,size_t*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC10(struct string_list *fname_list,
					const struct string_list *extra_keep)
{
	DIR *dir;
	struct dirent *e;
	char *fname;

	if (!(dir = FUNC5(packdir)))
		return;

	while ((e = FUNC6(dir)) != NULL) {
		size_t len;
		int i;

		for (i = 0; i < extra_keep->nr; i++)
			if (!FUNC3(e->d_name, extra_keep->items[i].string))
				break;
		if (extra_keep->nr > 0 && i < extra_keep->nr)
			continue;

		if (!FUNC8(e->d_name, ".pack", &len))
			continue;

		fname = FUNC9(e->d_name, len);

		if (!FUNC1(FUNC4("%s/%s.keep", packdir, fname)))
			FUNC7(fname_list, fname);
		else
			FUNC2(fname);
	}
	FUNC0(dir);
}