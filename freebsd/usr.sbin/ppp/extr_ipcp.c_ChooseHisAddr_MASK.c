#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {scalar_t__ nItems; } ;
struct TYPE_6__ {TYPE_3__ peer_list; } ;
struct TYPE_8__ {TYPE_2__ cfg; } ;
struct TYPE_5__ {TYPE_4__ ipcp; } ;
struct bundle {TYPE_1__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogIPCP ; 
 int /*<<< orphan*/  FUNC0 (struct in_addr) ; 
 scalar_t__ FUNC1 (TYPE_4__*,struct in_addr,struct in_addr) ; 
 struct in_addr FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct in_addr
FUNC4(struct bundle *bundle, struct in_addr gw)
{
  struct in_addr try;
  u_long f;

  for (f = 0; f < bundle->ncp.ipcp.cfg.peer_list.nItems; f++) {
    try = FUNC2(&bundle->ncp.ipcp.cfg.peer_list);
    FUNC3(LogDEBUG, "ChooseHisAddr: Check item %ld (%s)\n",
              f, FUNC0(try));
    if (FUNC1(&bundle->ncp.ipcp, gw, try)) {
      FUNC3(LogIPCP, "Selected IP address %s\n", FUNC0(try));
      break;
    }
  }

  if (f == bundle->ncp.ipcp.cfg.peer_list.nItems) {
    FUNC3(LogDEBUG, "ChooseHisAddr: All addresses in use !\n");
    try.s_addr = INADDR_ANY;
  }

  return try;
}