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
struct strbuf {char* buf; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct strbuf*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ show_only ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC11(void)
{
	struct strbuf reason = STRBUF_INIT;
	DIR *dir = FUNC5(FUNC3("worktrees"));
	struct dirent *d;
	if (!dir)
		return;
	while ((d = FUNC8(dir)) != NULL) {
		if (FUNC4(d->d_name))
			continue;
		FUNC10(&reason);
		if (!FUNC7(d->d_name, &reason))
			continue;
		if (show_only || verbose)
			FUNC6("%s\n", reason.buf);
		if (show_only)
			continue;
		FUNC1(d->d_name);
	}
	FUNC0(dir);
	if (!show_only)
		FUNC2();
	FUNC9(&reason);
}