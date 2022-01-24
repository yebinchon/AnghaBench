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
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const struct option *opt, const char *arg, int unset)
{
	struct note_data *d = opt->value;

	FUNC0(unset);

	FUNC3(&d->buf, FUNC5(arg) + 2);
	if (d->buf.len)
		FUNC1(&d->buf, '\n');
	FUNC2(&d->buf, arg);
	FUNC4(&d->buf, 0);

	d->given = 1;
	return 0;
}