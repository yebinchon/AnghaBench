#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__* file; } ;
struct TYPE_10__ {char* repstr; TYPE_1__ cfg; } ;
struct bundle {TYPE_2__ radius; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct authinfo {TYPE_6__* physical; TYPE_3__ in; } ;
struct TYPE_15__ {struct bundle* bundle; } ;
struct TYPE_12__ {scalar_t__ auth_iwait; scalar_t__ auth_ineed; } ;
struct TYPE_13__ {TYPE_4__ lcp; } ;
struct TYPE_14__ {TYPE_7__* dl; TYPE_5__ link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_UTMP ; 
 int /*<<< orphan*/  PAP_ACK ; 
 int /*<<< orphan*/  FUNC1 (struct authinfo*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct authinfo *authp)
{
  struct bundle *bundle = authp->physical->dl->bundle;

  FUNC3(authp->physical->dl, authp->in.name);
#ifndef NORADIUS
  if (*bundle->radius.cfg.file && bundle->radius.repstr)
    FUNC1(authp, PAP_ACK, bundle->radius.repstr);
  else
#endif
    FUNC1(authp, PAP_ACK, "Greetings!!");
  authp->physical->link.lcp.auth_ineed = 0;
  if (FUNC0(bundle, OPT_UTMP))
    FUNC4(authp->physical, authp->in.name);

  if (authp->physical->link.lcp.auth_iwait == 0)
    /*
     * Either I didn't need to authenticate, or I've already been
     * told that I got the answer right.
     */
    FUNC2(authp->physical->dl);
}