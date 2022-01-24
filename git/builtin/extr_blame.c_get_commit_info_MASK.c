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
struct commit_info {int /*<<< orphan*/  summary; int /*<<< orphan*/  committer_tz; int /*<<< orphan*/  committer_time; int /*<<< orphan*/  committer_mail; int /*<<< orphan*/  committer; int /*<<< orphan*/  author_tz; int /*<<< orphan*/  author_time; int /*<<< orphan*/  author_mail; int /*<<< orphan*/  author; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_info*) ; 
 int FUNC1 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 char* FUNC4 (struct commit*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct commit*,char const*) ; 

__attribute__((used)) static void FUNC9(struct commit *commit,
			    struct commit_info *ret,
			    int detailed)
{
	int len;
	const char *subject, *encoding;
	const char *message;

	FUNC0(ret);

	encoding = FUNC3();
	message = FUNC4(commit, NULL, encoding);
	FUNC2(message, "\nauthor ",
		    &ret->author, &ret->author_mail,
		    &ret->author_time, &ret->author_tz);

	if (!detailed) {
		FUNC8(commit, message);
		return;
	}

	FUNC2(message, "\ncommitter ",
		    &ret->committer, &ret->committer_mail,
		    &ret->committer_time, &ret->committer_tz);

	len = FUNC1(message, &subject);
	if (len)
		FUNC6(&ret->summary, subject, len);
	else
		FUNC7(&ret->summary, "(%s)", FUNC5(&commit->object.oid));

	FUNC8(commit, message);
}