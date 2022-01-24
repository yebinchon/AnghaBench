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
typedef  char u_char ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  physical; } ;
struct TYPE_3__ {int /*<<< orphan*/  local; int /*<<< orphan*/  peer; } ;
struct chap {int NTRespSent; TYPE_2__ auth; int /*<<< orphan*/  authresponse; TYPE_1__ challenge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAP_FAILURE ; 
 int /*<<< orphan*/  CHAP_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ MPPE_IsServer ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct chap *chap, char *name, char *key
#ifndef NODES
             , u_char type, int lm
#endif
            )
{
  u_char *ans;

  ans = FUNC1(name, key, chap->auth.id, chap->challenge.peer
#ifndef NODES
                         , type, chap->challenge.local, chap->authresponse, lm
#endif
                        );

  if (ans) {
    FUNC0(chap->auth.physical, CHAP_RESPONSE, chap->auth.id,
               ans, *ans + 1 + FUNC3(name), name);
#ifndef NODES
    chap->NTRespSent = !lm;
    MPPE_IsServer = 0;		/* XXX Global ! */
#endif
    FUNC2(ans);
  } else
    FUNC0(chap->auth.physical, CHAP_FAILURE, chap->auth.id,
               "Out of memory!", 14, NULL);
}