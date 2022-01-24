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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct checkout_opts {char* new_branch; int /*<<< orphan*/  quiet; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(const struct checkout_opts *opts)
{
	int status;
	struct strbuf branch_ref = STRBUF_INIT;

	FUNC6("unborn");

	if (!opts->new_branch)
		FUNC2(FUNC0("You are on a branch yet to be born"));
	FUNC4(&branch_ref, "refs/heads/%s", opts->new_branch);
	status = FUNC1("HEAD", branch_ref.buf, "checkout -b");
	FUNC5(&branch_ref);
	if (!opts->quiet)
		FUNC3(stderr, FUNC0("Switched to a new branch '%s'\n"),
			opts->new_branch);
	return status;
}