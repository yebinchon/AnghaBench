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
struct patch {char const* old_name; char const* new_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static void FUNC6(FILE *output, const char *fmt, struct patch *patch)
{
	struct strbuf sb = STRBUF_INIT;

	if (patch->old_name && patch->new_name &&
	    FUNC5(patch->old_name, patch->new_name)) {
		FUNC2(patch->old_name, &sb, NULL, 0);
		FUNC3(&sb, " => ");
		FUNC2(patch->new_name, &sb, NULL, 0);
	} else {
		const char *n = patch->new_name;
		if (!n)
			n = patch->old_name;
		FUNC2(n, &sb, NULL, 0);
	}
	FUNC0(output, fmt, sb.buf);
	FUNC1('\n', output);
	FUNC4(&sb);
}