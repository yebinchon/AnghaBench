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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ advice_add_embedded_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  embedded_advice ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  warn_on_embedded_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const char *path)
{
	struct strbuf name = STRBUF_INIT;

	if (!warn_on_embedded_repo)
		return;
	if (!FUNC2(path, "/"))
		return;

	/* Drop trailing slash for aesthetics */
	FUNC3(&name, path);
	FUNC5(&name, "/");

	FUNC6(FUNC0("adding embedded git repository: %s"), name.buf);
	if (advice_add_embedded_repo) {
		FUNC1(embedded_advice, name.buf, name.buf);
		/* there may be multiple entries; advise only once */
		advice_add_embedded_repo = 0;
	}

	FUNC4(&name);
}