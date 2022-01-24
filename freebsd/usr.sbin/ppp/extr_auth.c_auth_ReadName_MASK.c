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
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {char* name; } ;
struct authinfo {TYPE_1__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 size_t FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (struct mbuf*,int /*<<< orphan*/ *,size_t) ; 

struct mbuf *
FUNC4(struct authinfo *authp, struct mbuf *bp, size_t len)
{
  if (len > sizeof authp->in.name - 1)
    FUNC0(LogWARN, "auth_ReadName: Name too long (%zu) !\n", len);
  else {
    size_t mlen = FUNC2(bp);

    if (len > mlen)
      FUNC0(LogWARN, "auth_ReadName: Short packet (%zu > %zu) !\n",
                 len, mlen);
    else {
      bp = FUNC3(bp, (u_char *)authp->in.name, len);
      authp->in.name[len] = '\0';
      return bp;
    }
  }

  *authp->in.name = '\0';
  FUNC1(bp);
  return NULL;
}