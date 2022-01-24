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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(int argc, const char **argv,
		const char *prefix)
{
	const char *ret;
	struct strbuf sb = STRBUF_INIT;
	if (argc != 2)
		FUNC0("submodule--helper remote-branch takes exactly one arguments, got %d", argc);

	ret = FUNC2(argv[1]);
	if (!ret)
		FUNC0("submodule %s doesn't exist", argv[1]);

	FUNC1("%s", ret);
	FUNC3(&sb);
	return 0;
}