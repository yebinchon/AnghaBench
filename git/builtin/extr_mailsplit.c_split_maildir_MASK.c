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
struct string_list {int nr; TYPE_1__* items; int /*<<< orphan*/  cmp; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  maildir_filename_cmp ; 
 scalar_t__ FUNC4 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,int) ; 
 char* FUNC8 (char*,char const*,int,...) ; 

__attribute__((used)) static int FUNC9(const char *maildir, const char *dir,
	int nr_prec, int skip)
{
	char *file = NULL;
	FILE *f = NULL;
	int ret = -1;
	int i;
	struct string_list list = STRING_LIST_INIT_DUP;

	list.cmp = maildir_filename_cmp;

	if (FUNC4(&list, maildir) < 0)
		goto out;

	for (i = 0; i < list.nr; i++) {
		char *name;

		FUNC3(file);
		file = FUNC8("%s/%s", maildir, list.items[i].string);

		f = FUNC2(file, "r");
		if (!f) {
			FUNC0("cannot open mail %s", file);
			goto out;
		}

		if (FUNC6(&buf, f, '\n')) {
			FUNC0("cannot read mail %s", file);
			goto out;
		}

		name = FUNC8("%s/%0*d", dir, nr_prec, ++skip);
		FUNC5(f, name, 1);
		FUNC3(name);

		FUNC1(f);
		f = NULL;
	}

	ret = skip;
out:
	if (f)
		FUNC1(f);
	FUNC3(file);
	FUNC7(&list, 1);
	return ret;
}