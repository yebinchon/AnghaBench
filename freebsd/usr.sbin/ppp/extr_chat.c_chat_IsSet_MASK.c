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
struct fdescriptor {int dummy; } ;
struct chat {TYPE_1__* physical; scalar_t__ argptr; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 struct chat* FUNC0 (struct fdescriptor*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC2(struct fdescriptor *d, const fd_set *fdset)
{
  struct chat *c = FUNC0(d);
  return c->argptr && FUNC1(&c->physical->desc, fdset);
}