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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* delim ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omit_values ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 scalar_t__ show_origin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  term ; 

__attribute__((used)) static int FUNC4(const char *key_, const char *value_, void *cb)
{
	if (show_origin) {
		struct strbuf buf = STRBUF_INIT;
		FUNC2(&buf);
		/* Use fwrite as "buf" can contain \0's if "end_null" is set. */
		FUNC0(buf.buf, 1, buf.len, stdout);
		FUNC3(&buf);
	}
	if (!omit_values && value_)
		FUNC1("%s%c%s%c", key_, delim, value_, term);
	else
		FUNC1("%s%c", key_, term);
	return 0;
}