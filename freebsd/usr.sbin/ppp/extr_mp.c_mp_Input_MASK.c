#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct physical {int dummy; } ;
struct mbuf {int dummy; } ;
struct link {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  active; } ;
struct TYPE_3__ {TYPE_2__ mp; } ;
struct bundle {TYPE_1__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  MB_MPIN ; 
 struct physical* FUNC0 (struct link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct mbuf*,struct physical*) ; 

struct mbuf *
FUNC5(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  struct physical *p = FUNC0(l);

  if (!bundle->ncp.mp.active)
    /* Let someone else deal with it ! */
    return bp;

  if (p == NULL) {
    FUNC1(LogWARN, "DecodePacket: Can't do MP inside MP !\n");
    FUNC2(bp);
  } else {
    FUNC3(bp, MB_MPIN);
    FUNC4(&bundle->ncp.mp, bp, p);
  }

  return NULL;
}