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
struct wt_status {char const* prefix; int amend; char* reference; char const* index_file; int nowarn; int is_initial; int committable; int /*<<< orphan*/  ignore_submodule_arg; int /*<<< orphan*/  status_format; int /*<<< orphan*/  oid_commit; int /*<<< orphan*/ * fp; int /*<<< orphan*/  verbose; scalar_t__ relative_paths; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ amend ; 
 scalar_t__ FUNC0 (char*,struct object_id*) ; 
 int /*<<< orphan*/  ignore_submodule_arg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  status_format ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*) ; 

__attribute__((used)) static int FUNC5(FILE *fp, const char *index_file, const char *prefix, int nowarn,
		      struct wt_status *s)
{
	struct object_id oid;

	if (s->relative_paths)
		s->prefix = prefix;

	if (amend) {
		s->amend = 1;
		s->reference = "HEAD^1";
	}
	s->verbose = verbose;
	s->index_file = index_file;
	s->fp = fp;
	s->nowarn = nowarn;
	s->is_initial = FUNC0(s->reference, &oid) ? 1 : 0;
	if (!s->is_initial)
		FUNC1(&s->oid_commit, &oid);
	s->status_format = status_format;
	s->ignore_submodule_arg = ignore_submodule_arg;

	FUNC2(s);
	FUNC4(s);
	FUNC3(s);

	return s->committable;
}