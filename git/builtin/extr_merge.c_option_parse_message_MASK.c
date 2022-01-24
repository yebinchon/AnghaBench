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
struct strbuf {scalar_t__ len; } ;
struct option {struct strbuf* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int have_message ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
				const char *arg, int unset)
{
	struct strbuf *buf = opt->value;

	if (unset)
		FUNC3(buf, 0);
	else if (arg) {
		FUNC2(buf, "%s%s", buf->len ? "\n\n" : "", arg);
		have_message = 1;
	} else
		return FUNC1(FUNC0("switch `m' requires a value"));
	return 0;
}