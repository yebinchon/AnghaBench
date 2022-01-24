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
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int dummy; } ;
struct TYPE_3__ {void* length; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct authinfo {TYPE_2__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 size_t FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (struct mbuf*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (void*) ; 

struct mbuf *
FUNC6(struct authinfo *authp, struct mbuf *bp)
{
  size_t len;

  len = FUNC3(bp);
  if (len >= sizeof authp->in.hdr) {
    bp = FUNC4(bp, (u_char *)&authp->in.hdr, sizeof authp->in.hdr);
    if (len >= FUNC5(authp->in.hdr.length))
      return bp;
    authp->in.hdr.length = FUNC0(0);
    FUNC1(LogWARN, "auth_ReadHeader: Short packet (%u > %zu) !\n",
               FUNC5(authp->in.hdr.length), len);
  } else {
    authp->in.hdr.length = FUNC0(0);
    FUNC1(LogWARN, "auth_ReadHeader: Short packet header (%u > %zu) !\n",
               (int)(sizeof authp->in.hdr), len);
  }

  FUNC2(bp);
  return NULL;
}