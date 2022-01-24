#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct fdescriptor {int dummy; } ;
struct datalink {int /*<<< orphan*/  desc; struct datalink* next; } ;
struct TYPE_9__ {int /*<<< orphan*/  fd; } ;
struct TYPE_6__ {int /*<<< orphan*/  desc; } ;
struct TYPE_7__ {TYPE_1__ server; } ;
struct TYPE_8__ {TYPE_2__ mp; } ;
struct TYPE_10__ {int /*<<< orphan*/  desc; } ;
struct bundle {TYPE_4__ dev; TYPE_3__ ncp; TYPE_5__ radius; struct datalink* links; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct bundle* FUNC1 (struct fdescriptor*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC3(struct fdescriptor *d, const fd_set *fdset)
{
  struct bundle *bundle = FUNC1(d);
  struct datalink *dl;

  for (dl = bundle->links; dl; dl = dl->next)
    if (FUNC2(&dl->desc, fdset))
      return 1;

#ifndef NORADIUS
  if (FUNC2(&bundle->radius.desc, fdset))
    return 1;
#endif

  if (FUNC2(&bundle->ncp.mp.server.desc, fdset))
    return 1;

  return FUNC0(bundle->dev.fd, fdset);
}