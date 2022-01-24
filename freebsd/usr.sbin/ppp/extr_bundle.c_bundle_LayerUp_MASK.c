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
struct physical {int /*<<< orphan*/  dl; } ;
struct fsm {scalar_t__ proto; TYPE_4__* bundle; int /*<<< orphan*/  link; } ;
struct TYPE_6__ {scalar_t__ sessiontime; } ;
struct TYPE_5__ {int /*<<< orphan*/  mp; } ;
struct bundle {TYPE_2__ radius; int /*<<< orphan*/  upat; TYPE_1__ ncp; } ;
struct TYPE_7__ {int /*<<< orphan*/  mp; } ;
struct TYPE_8__ {TYPE_3__ ncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NORMAL ; 
 scalar_t__ PROTO_CCP ; 
 scalar_t__ PROTO_LCP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bundle*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct physical* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void *v, struct fsm *fp)
{
  /*
   * The given fsm is now up
   * If it's an LCP, adjust our phys_mode.open value and check the
   * autoload timer.
   * If it's the first NCP, calculate our bandwidth
   * If it's the first NCP, set our ``upat'' time
   * If it's the first NCP, start the idle timer.
   * If it's an NCP, tell our -background parent to go away.
   * If it's the first NCP, start the autoload timer
   */
  struct bundle *bundle = (struct bundle *)v;

  if (fp->proto == PROTO_LCP) {
    struct physical *p = FUNC6(fp->link);

    FUNC1(bundle, p->dl);
    FUNC7(&bundle->ncp.mp);
  } else if (FUNC5(fp->proto)) {
    if (FUNC8(&fp->bundle->ncp) == 1) {
      FUNC0(fp->bundle);
      FUNC9(&bundle->upat);
#ifndef NORADIUS
      if (bundle->radius.sessiontime)
        FUNC4(bundle, 0);
#endif
      FUNC3(bundle, 0);
      FUNC7(&fp->bundle->ncp.mp);
    }
    FUNC2(bundle, EX_NORMAL);
  } else if (fp->proto == PROTO_CCP)
    FUNC0(fp->bundle);	/* Against ccp_MTUOverhead */
}