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
struct option {struct msg_arg* value; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct msg_arg {int given; TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg, int unset)
{
	struct msg_arg *msg = opt->value;

	FUNC0(unset);

	if (!arg)
		return -1;
	if (msg->buf.len)
		FUNC1(&(msg->buf), "\n\n");
	FUNC1(&(msg->buf), arg);
	msg->given = 1;
	return 0;
}