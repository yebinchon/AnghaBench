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
struct strbuf {char* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct commit*,struct strbuf*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const char *msg, struct commit *commit)
{
	struct strbuf sb = STRBUF_INIT;

	if (!FUNC2(commit))
		FUNC3(CMIT_FMT_ONELINE, commit, &sb);
	if (FUNC4()) {
		FUNC1(stderr, "%s %s... %s\n", msg,
			FUNC0(&commit->object.oid, DEFAULT_ABBREV), sb.buf);
	} else {
		FUNC1(stderr, "%s %s %s\n", msg,
			FUNC0(&commit->object.oid, DEFAULT_ABBREV), sb.buf);
	}
	FUNC5(&sb);
}