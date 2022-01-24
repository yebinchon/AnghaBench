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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 scalar_t__ option_shared ; 
 scalar_t__ option_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static void FUNC7(const char *src_repo, const char *dest_repo)
{
	if (option_shared) {
		struct strbuf alt = STRBUF_INIT;
		FUNC4(&alt, src_repo);
		FUNC5(&alt, "/objects");
		FUNC1(alt.buf);
		FUNC6(&alt);
	} else {
		struct strbuf src = STRBUF_INIT;
		struct strbuf dest = STRBUF_INIT;
		FUNC4(&src, src_repo);
		FUNC4(&dest, dest_repo);
		FUNC5(&src, "/objects");
		FUNC5(&dest, "/objects");
		FUNC2(&src, &dest, src_repo);
		FUNC6(&src);
		FUNC6(&dest);
	}

	if (0 <= option_verbosity)
		FUNC3(stderr, "%s", FUNC0("done.\n"));
}