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
struct TYPE_2__ {int /*<<< orphan*/  slstat; int /*<<< orphan*/  cslc; } ;
struct ipcp {int my_compproto; TYPE_1__ vj; } ;

/* Variables and functions */
 int MAX_HDR ; 
 int MAX_VJHEADER ; 
 int /*<<< orphan*/ * FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_VJIN ; 
 int /*<<< orphan*/  TYPE_UNCOMPRESSED_TCP ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (struct mbuf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (struct mbuf*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct mbuf *
FUNC8(struct ipcp *ipcp, struct mbuf *bp, u_char type)
{
  u_char *bufp;
  int len, olen, rlen;
  u_char work[MAX_HDR + MAX_VJHEADER];	/* enough to hold TCP/IP header */

  bp = FUNC4(bp);
  olen = len = FUNC2(bp);
  if (type == TYPE_UNCOMPRESSED_TCP) {
    /*
     * Uncompressed packet does NOT change its size, so that we can use mbuf
     * space for uncompression job.
     */
    bufp = FUNC0(bp);
    len = FUNC7(&bufp, len, type, &ipcp->vj.cslc, &ipcp->vj.slstat,
                            (ipcp->my_compproto >> 8) & 255);
    if (len <= 0) {
      FUNC1(bp);
      bp = NULL;
    } else
      FUNC5(bp, MB_VJIN);
    return bp;
  }

  /*
   * Handle compressed packet. 1) Read up to MAX_VJHEADER bytes into work
   * space. 2) Try to uncompress it. 3) Compute amount of necessary space. 4)
   * Copy unread data info there.
   */
  if (len > MAX_VJHEADER)
    len = MAX_VJHEADER;
  rlen = len;
  bufp = work + MAX_HDR;
  bp = FUNC6(bp, bufp, rlen);
  len = FUNC7(&bufp, olen, type, &ipcp->vj.cslc, &ipcp->vj.slstat,
                          (ipcp->my_compproto >> 8) & 255);
  if (len <= 0) {
    FUNC1(bp);
    return NULL;
  }
  len -= olen;
  len += rlen;

  bp = FUNC3(bp, bufp, len, 0);
  FUNC5(bp, MB_VJIN);

  return bp;
}