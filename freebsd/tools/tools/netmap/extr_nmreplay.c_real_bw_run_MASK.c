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
struct _qs {int /*<<< orphan*/  cur_tt; } ;
struct _cfg {int /*<<< orphan*/ * f; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct _qs *q, struct _cfg *arg)
{
	q->cur_tt /= arg->f[0];
	return 0;
}