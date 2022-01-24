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
struct remote {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct remote*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 struct remote* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct remote*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static int FUNC8(const char *remotename, const char **branches,
				int add_mode)
{
	struct strbuf key = STRBUF_INIT;
	struct remote *remote;

	FUNC6(&key, "remote.%s.fetch", remotename);

	remote = FUNC3(remotename);
	if (!FUNC4(remote, 1))
		FUNC2(FUNC0("No such remote '%s'"), remotename);

	if (!add_mode && FUNC5(key.buf)) {
		FUNC7(&key);
		return 1;
	}
	FUNC1(remote, branches, key.buf);

	FUNC7(&key);
	return 0;
}