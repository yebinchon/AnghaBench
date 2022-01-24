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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct ref {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  option_bare ; 
 scalar_t__ option_branch ; 
 scalar_t__ option_mirror ; 
 int /*<<< orphan*/  option_origin ; 
 scalar_t__ option_single_branch ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(const char *src_ref_prefix,
		const struct ref *our_head_points_at,
		const struct ref *remote_head_points_at,
		struct strbuf *branch_top)
{
	struct strbuf key = STRBUF_INIT;
	struct strbuf value = STRBUF_INIT;

	if (option_mirror || !option_bare) {
		if (option_single_branch && !option_mirror) {
			if (option_branch) {
				if (FUNC4(our_head_points_at->name, "refs/tags/"))
					FUNC5(&value, "+%s:%s", our_head_points_at->name,
						our_head_points_at->name);
				else
					FUNC5(&value, "+%s:%s%s", our_head_points_at->name,
						branch_top->buf, option_branch);
			} else if (remote_head_points_at) {
				const char *head = remote_head_points_at->name;
				if (!FUNC3(head, "refs/heads/", &head))
					FUNC0("remote HEAD points at non-head?");

				FUNC5(&value, "+%s:%s%s", remote_head_points_at->name,
						branch_top->buf, head);
			}
			/*
			 * otherwise, the next "git fetch" will
			 * simply fetch from HEAD without updating
			 * any remote-tracking branch, which is what
			 * we want.
			 */
		} else {
			FUNC5(&value, "+%s*:%s*", src_ref_prefix, branch_top->buf);
		}
		/* Configure the remote */
		if (value.len) {
			FUNC5(&key, "remote.%s.fetch", option_origin);
			FUNC2(key.buf, value.buf, "^$", 0);
			FUNC7(&key);

			if (option_mirror) {
				FUNC5(&key, "remote.%s.mirror", option_origin);
				FUNC1(key.buf, "true");
				FUNC7(&key);
			}
		}
	}

	FUNC6(&key);
	FUNC6(&value);
}