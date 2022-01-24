#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_char ;
struct mbuf {int dummy; } ;
struct async {int mode; int* hbuff; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDLCSIZE ; 
#define  HDLC_ESC 129 
#define  HDLC_SYN 128 
 int HDLC_XOR ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  MB_ASYNCIN ; 
 int MODE_ESC ; 
 int MODE_HUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC3(struct async *async, u_char c)
{
  struct mbuf *bp;

  if ((async->mode & MODE_HUNT) && c != HDLC_SYN)
    return NULL;

  switch (c) {
  case HDLC_SYN:
    async->mode &= ~MODE_HUNT;
    if (async->length) {		/* packet is ready. */
      bp = FUNC1(async->length, MB_ASYNCIN);
      FUNC2(bp, async->hbuff, async->length);
      async->length = 0;
      return bp;
    }
    break;
  case HDLC_ESC:
    if (!(async->mode & MODE_ESC)) {
      async->mode |= MODE_ESC;
      break;
    }
    /* FALLTHROUGH */
  default:
    if (async->length >= HDLCSIZE) {
      /* packet is too large, discard it */
      FUNC0(LogWARN, "Packet too large (%d), discarding.\n",
                 async->length);
      async->length = 0;
      async->mode = MODE_HUNT;
      break;
    }
    if (async->mode & MODE_ESC) {
      c ^= HDLC_XOR;
      async->mode &= ~MODE_ESC;
    }
    async->hbuff[async->length++] = c;
    break;
  }
  return NULL;
}