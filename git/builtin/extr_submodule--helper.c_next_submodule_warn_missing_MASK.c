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
struct submodule_update_clone {scalar_t__ warn_if_uninitialized; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct submodule_update_clone *suc,
		struct strbuf *out, const char *displaypath)
{
	/*
	 * Only mention uninitialized submodules when their
	 * paths have been specified.
	 */
	if (suc->warn_if_uninitialized) {
		FUNC2(out,
			FUNC0("Submodule path '%s' not initialized"),
			displaypath);
		FUNC1(out, '\n');
		FUNC3(out,
			FUNC0("Maybe you want to use 'update --init'?"));
		FUNC1(out, '\n');
	}
}