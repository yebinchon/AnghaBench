#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__* local; } ;
struct chap {TYPE_7__ challenge; } ;
struct authinfo {int /*<<< orphan*/  id; TYPE_8__* physical; } ;
struct TYPE_13__ {int want_authtype; } ;
struct TYPE_14__ {TYPE_5__ lcp; } ;
struct TYPE_16__ {TYPE_6__ link; TYPE_4__* dl; } ;
struct TYPE_12__ {TYPE_3__* bundle; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__ auth; } ;
struct TYPE_11__ {TYPE_2__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAP_CHALLENGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 struct chap* FUNC1 (struct authinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct authinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct authinfo *authp)
{
  struct chap *chap = FUNC1(authp);
  int len;

  FUNC3(LogDEBUG, "CHAP%02X: Challenge\n",
             authp->physical->link.lcp.want_authtype);

  len = FUNC4(authp->physical->dl->bundle->cfg.auth.name);

  /* Generate new local challenge value */
  if (!*chap->challenge.local)
    FUNC2(authp);

#ifndef NODES
  if (authp->physical->link.lcp.want_authtype == 0x81)
    FUNC0(authp->physical, CHAP_CHALLENGE, authp->id,
             chap->challenge.local, 1 + *chap->challenge.local, NULL);
  else
#endif
    FUNC0(authp->physical, CHAP_CHALLENGE, authp->id,
             chap->challenge.local, 1 + *chap->challenge.local + len, NULL);
}