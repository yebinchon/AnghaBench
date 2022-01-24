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
 int have_option_m ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct option *opt, const char *arg, int unset)
{
	struct strbuf *buf = opt->value;
	if (unset) {
		have_option_m = 0;
		FUNC3(buf, 0);
	} else {
		have_option_m = 1;
		if (buf->len)
			FUNC0(buf, '\n');
		FUNC1(buf, arg);
		FUNC2(buf);
	}
	return 0;
}