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
struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct object_id*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,struct object_id*) ; 
 char const* FUNC4 (struct object_id*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC7(struct commit *upstream, struct commit *onto,
			       const char **head_hash,
			       char **revisions, char **shortrevisions)
{
	struct commit *base_rev = upstream ? upstream : onto;
	const char *shorthead;
	struct object_id orig_head;

	if (FUNC3("HEAD", &orig_head))
		return FUNC1(FUNC0("no HEAD?"));

	*head_hash = FUNC2(&orig_head, GIT_MAX_HEXSZ);
	*revisions = FUNC6("%s...%s", FUNC4(&base_rev->object.oid),
						   *head_hash);

	shorthead = FUNC2(&orig_head, DEFAULT_ABBREV);

	if (upstream) {
		const char *shortrev;

		shortrev = FUNC2(&base_rev->object.oid,
					      DEFAULT_ABBREV);

		*shortrevisions = FUNC6("%s..%s", shortrev, shorthead);
	} else
		*shortrevisions = FUNC5(shorthead);

	return 0;
}