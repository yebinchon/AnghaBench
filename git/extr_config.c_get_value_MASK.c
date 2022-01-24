#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
typedef  int (* config_fn_t ) (int /*<<< orphan*/ ,char*,void*) ;
struct TYPE_2__ {int /*<<< orphan*/  linenr; scalar_t__ eof; } ;

/* Variables and functions */
 TYPE_1__* cf ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(config_fn_t fn, void *data, struct strbuf *name)
{
	int c;
	char *value;
	int ret;

	/* Get the full name */
	for (;;) {
		c = FUNC0();
		if (cf->eof)
			break;
		if (!FUNC1(c))
			break;
		FUNC3(name, FUNC4(c));
	}

	while (c == ' ' || c == '\t')
		c = FUNC0();

	value = NULL;
	if (c != '\n') {
		if (c != '=')
			return -1;
		value = FUNC2();
		if (!value)
			return -1;
	}
	/*
	 * We already consumed the \n, but we need linenr to point to
	 * the line we just parsed during the call to fn to get
	 * accurate line number in error messages.
	 */
	cf->linenr--;
	ret = fn(name->buf, value, data);
	if (ret >= 0)
		cf->linenr++;
	return ret;
}