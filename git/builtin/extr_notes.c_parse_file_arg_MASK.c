#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct option {struct note_data* value; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct note_data {int given; TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(const struct option *opt, const char *arg, int unset)
{
	struct note_data *d = opt->value;

	FUNC0(unset);

	if (d->buf.len)
		FUNC3(&d->buf, '\n');
	if (!FUNC7(arg, "-")) {
		if (FUNC4(&d->buf, 0, 1024) < 0)
			FUNC2(FUNC1("cannot read '%s'"), arg);
	} else if (FUNC5(&d->buf, arg, 1024) < 0)
		FUNC2(FUNC1("could not open or read '%s'"), arg);
	FUNC6(&d->buf, 0);

	d->given = 1;
	return 0;
}