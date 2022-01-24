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
typedef  int u_short ;
struct mppe_state {int cohnum; int flushrequired; int /*<<< orphan*/  rc4key; int /*<<< orphan*/  sesskey; int /*<<< orphan*/  keylen; scalar_t__ stateless; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reqid; } ;
struct ccp {int compin; int uncompin; TYPE_1__ fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_RESETREQ ; 
 int /*<<< orphan*/  LogCCP ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogERROR ; 
 char* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_CCPOUT ; 
 int /*<<< orphan*/  FUNC1 (struct mppe_state*) ; 
 int MPPE_ENCRYPTED ; 
 int MPPE_FLUSHED ; 
 int MPPE_HEADER_BITMASK ; 
 int MPPE_HEADER_FLAG ; 
 int MPPE_HEADER_FLAGMASK ; 
 int MPPE_HEADER_FLAGSHIFT ; 
 scalar_t__ MPPE_HEADER_STATEFUL_KEYCHANGES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (struct mbuf*,int*,int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static struct mbuf *
FUNC11(void *v, struct ccp *ccp, u_short *proto, struct mbuf *mp)
{
  struct mppe_state *mip = (struct mppe_state *)v;
  u_short prefix;
  char *rp;
  int dictinit, flushed, ilen, len, n;

  ilen = FUNC8(mp);
  dictinit = 0;
  ccp->compin += ilen;

  FUNC6(LogDEBUG, "MPPE: Input: Proto %02x (%d bytes)\n", *proto, ilen);
  FUNC5(LogDEBUG, "MPPE: Input: Packet:", mp);

  mp = FUNC9(mp, &prefix, 2);
  prefix = FUNC10(prefix);
  flushed = prefix & MPPE_FLUSHED;
  prefix &= ~flushed;
  if ((prefix & MPPE_HEADER_BITMASK) != MPPE_ENCRYPTED) {
    FUNC6(LogERROR, "MPPE: Input: Invalid packet (flags = 0x%x)\n",
               (prefix & MPPE_HEADER_BITMASK) | flushed);
    FUNC7(mp);
    return NULL;
  }

  prefix &= ~MPPE_HEADER_BITMASK;

  if (!flushed && mip->stateless) {
    FUNC6(LogCCP, "MPPEInput: Packet without MPPE_FLUSHED set"
               " in stateless mode\n");
    flushed = MPPE_FLUSHED;
    /* Should we really continue ? */
  }

  if (mip->stateless) {
    /* Change our key for each missed packet in stateless mode */
    while (prefix != mip->cohnum) {
      FUNC6(LogDEBUG, "MPPEInput: Key changed [%u]\n", prefix);
      FUNC1(mip);
      /*
       * mip->cohnum contains what we received last time in stateless
       * mode.
       */
      mip->cohnum++;
      mip->cohnum &= ~MPPE_HEADER_BITMASK;
    }
    dictinit = 1;
  } else {
    if (flushed) {
      /*
       * We can always process a flushed packet.
       * Catch up on any outstanding key changes.
       */
      n = (prefix >> MPPE_HEADER_FLAGSHIFT) -
          (mip->cohnum >> MPPE_HEADER_FLAGSHIFT);
      if (n < 0)
        n += MPPE_HEADER_STATEFUL_KEYCHANGES;
      while (n--) {
        FUNC6(LogDEBUG, "MPPEInput: Key changed during catchup [%u]\n",
                   prefix);
        FUNC1(mip);
      }
      mip->flushrequired = 0;
      mip->cohnum = prefix;
      dictinit = 1;
    }

    if (mip->flushrequired) {
      /*
       * Perhaps we should be lenient if
       * (prefix & MPPE_HEADER_FLAGMASK) == MPPE_HEADER_FLAG
       * The spec says that we shouldn't be though....
       */
      FUNC6(LogDEBUG, "MPPE: Not flushed - discarded\n");
      FUNC4(&ccp->fsm, CODE_RESETREQ, ccp->fsm.reqid++, NULL, 0,
                 MB_CCPOUT);
      FUNC7(mp);
      return NULL;
    }

    if (prefix != mip->cohnum) {
      /*
       * We're in stateful mode and didn't receive the expected
       * packet.  Send a reset request, but don't tell the CCP layer
       * about it as we don't expect to receive a Reset ACK !
       * Guess what... M$ invented this !
       */
      FUNC6(LogCCP, "MPPE: Input: Got seq %u, not %u\n",
                 prefix, mip->cohnum);
      FUNC4(&ccp->fsm, CODE_RESETREQ, ccp->fsm.reqid++, NULL, 0,
                 MB_CCPOUT);
      mip->flushrequired = 1;
      FUNC7(mp);
      return NULL;
    }

    if ((prefix & MPPE_HEADER_FLAGMASK) == MPPE_HEADER_FLAG) {
      FUNC6(LogDEBUG, "MPPEInput: Key changed [%u]\n", prefix);
      FUNC1(mip);
      dictinit = 1;
    } else if (flushed)
      dictinit = 1;

    /*
     * mip->cohnum contains what we expect to receive next time in stateful
     * mode.
     */
    mip->cohnum++;
    mip->cohnum &= ~MPPE_HEADER_BITMASK;
  }

  if (dictinit) {
    FUNC6(LogDEBUG, "MPPEInput: Dictionary initialised [%u]\n", prefix);
    FUNC3(&mip->rc4key, mip->keylen, mip->sesskey);
  }

  mp = FUNC9(mp, proto, 2);
  FUNC2(&mip->rc4key, 2, (char *)proto, (char *)proto);
  *proto = FUNC10(*proto);

  rp = FUNC0(mp);
  len = FUNC8(mp);
  FUNC2(&mip->rc4key, len, rp, rp);

  FUNC6(LogDEBUG, "MPPEInput: Decrypted: Proto %02x (%d bytes)\n",
             *proto, len);
  FUNC5(LogDEBUG, "MPPEInput: Decrypted: Packet:", mp);

  ccp->uncompin += len;

  return mp;
}