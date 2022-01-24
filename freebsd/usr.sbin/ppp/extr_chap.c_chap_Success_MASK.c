#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__* file; } ;
struct TYPE_12__ {char* msrepstr; char* repstr; TYPE_1__ cfg; } ;
struct bundle {TYPE_2__ radius; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
struct authinfo {TYPE_6__* physical; TYPE_3__ in; int /*<<< orphan*/  id; } ;
struct TYPE_18__ {char* authresponse; } ;
struct TYPE_17__ {struct bundle* bundle; } ;
struct TYPE_14__ {int want_authtype; scalar_t__ auth_iwait; scalar_t__ auth_ineed; } ;
struct TYPE_15__ {TYPE_4__ lcp; } ;
struct TYPE_16__ {TYPE_7__* dl; TYPE_5__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bundle*,int /*<<< orphan*/ ) ; 
 int MPPE_MasterKeyValid ; 
 int /*<<< orphan*/  OPT_UTMP ; 
 TYPE_9__* FUNC2 (struct authinfo*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(struct authinfo *authp)
{
  struct bundle *bundle = authp->physical->dl->bundle;
  const char *msg;

  FUNC4(authp->physical->dl, authp->in.name);
#ifndef NODES
  if (authp->physical->link.lcp.want_authtype == 0x81) {
#ifndef NORADIUS
    if (*bundle->radius.cfg.file && bundle->radius.msrepstr)
      msg = bundle->radius.msrepstr;
    else
#endif
      msg = FUNC2(authp)->authresponse;
    MPPE_MasterKeyValid = 1;		/* XXX Global ! */
  } else
#endif
#ifndef NORADIUS
  if (*bundle->radius.cfg.file && bundle->radius.repstr)
    msg = bundle->radius.repstr;
  else
#endif
    msg = "Welcome!!";

  FUNC0(authp->physical, CHAP_SUCCESS, authp->id, msg, FUNC6(msg),
             NULL);

  authp->physical->link.lcp.auth_ineed = 0;
  if (FUNC1(bundle, OPT_UTMP))
    FUNC5(authp->physical, authp->in.name);

  if (authp->physical->link.lcp.auth_iwait == 0)
    /*
     * Either I didn't need to authenticate, or I've already been
     * told that I got the answer right.
     */
    FUNC3(authp->physical->dl);
}