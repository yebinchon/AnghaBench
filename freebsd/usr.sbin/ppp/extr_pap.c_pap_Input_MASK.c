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
typedef  size_t u_char ;
struct TYPE_12__ {int /*<<< orphan*/  auth_ineed; int /*<<< orphan*/  auth_iwait; } ;
struct TYPE_13__ {TYPE_4__ lcp; } ;
struct physical {TYPE_7__* dl; TYPE_5__ link; } ;
struct mbuf {int dummy; } ;
struct link {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/ * file; } ;
struct TYPE_14__ {TYPE_2__ cfg; } ;
struct bundle {TYPE_6__ radius; } ;
struct TYPE_9__ {int code; scalar_t__ id; int /*<<< orphan*/  length; } ;
struct TYPE_11__ {char* name; TYPE_1__ hdr; } ;
struct authinfo {scalar_t__ id; TYPE_3__ in; } ;
struct TYPE_15__ {struct authinfo pap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  LogWARN ; 
 int MAXPAPCODE ; 
 char* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_PAPIN ; 
 int /*<<< orphan*/  OPT_IDCHECK ; 
#define  PAP_ACK 130 
#define  PAP_NAK 129 
#define  PAP_REQUEST 128 
 scalar_t__ PHASE_AUTHENTICATE ; 
 scalar_t__ PHASE_NETWORK ; 
 int /*<<< orphan*/  PROTO_PAP ; 
 struct mbuf* FUNC2 (struct authinfo*,struct mbuf*) ; 
 struct mbuf* FUNC3 (struct authinfo*,struct mbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct authinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct bundle*,size_t*,size_t*) ; 
 scalar_t__ FUNC6 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (size_t*) ; 
 struct physical* FUNC10 (struct link*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 
 size_t FUNC13 (struct mbuf*) ; 
 struct mbuf* FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct mbuf*,int /*<<< orphan*/ ) ; 
 size_t* FUNC16 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC17 (struct mbuf*,size_t*,size_t) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct authinfo*) ; 
 int /*<<< orphan*/  FUNC20 (struct authinfo*) ; 
 int /*<<< orphan*/ * papcodes ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,struct authinfo*,size_t*,size_t*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (size_t*) ; 

struct mbuf *
FUNC23(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  struct physical *p = FUNC10(l);
  struct authinfo *authp = &p->dl->pap;
  u_char nlen, klen, *key;
  const char *txt;
  int txtlen;

  if (p == NULL) {
    FUNC11(LogERROR, "pap_Input: Not a physical link - dropped\n");
    FUNC12(bp);
    return NULL;
  }

  if (FUNC6(bundle) != PHASE_NETWORK &&
      FUNC6(bundle) != PHASE_AUTHENTICATE) {
    FUNC11(LogPHASE, "Unexpected pap input - dropped !\n");
    FUNC12(bp);
    return NULL;
  }

  if ((bp = FUNC2(authp, bp)) == NULL &&
      FUNC18(authp->in.hdr.length) == 0) {
    FUNC11(LogWARN, "Pap Input: Truncated header !\n");
    return NULL;
  }

  if (authp->in.hdr.code == 0 || authp->in.hdr.code > MAXPAPCODE) {
    FUNC11(LogPHASE, "Pap Input: %d: Bad PAP code !\n", authp->in.hdr.code);
    FUNC12(bp);
    return NULL;
  }

  if (authp->in.hdr.code != PAP_REQUEST && authp->id != authp->in.hdr.id &&
      FUNC0(bundle, OPT_IDCHECK)) {
    /* Wrong conversation dude ! */
    FUNC11(LogPHASE, "Pap Input: %s dropped (got id %d, not %d)\n",
               papcodes[authp->in.hdr.code], authp->in.hdr.id, authp->id);
    FUNC12(bp);
    return NULL;
  }
  FUNC15(bp, MB_PAPIN);
  authp->id = authp->in.hdr.id;		/* We respond with this id */

  if (bp) {
    bp = FUNC17(bp, &nlen, 1);
    if (authp->in.hdr.code == PAP_ACK) {
      /*
       * Don't restrict the length of our acknowledgement freetext to
       * nlen (a one-byte length).  Show the rest of the ack packet
       * instead.  This isn't really part of the protocol.....
       */
      bp = FUNC14(bp);
      txt = FUNC1(bp);
      txtlen = FUNC13(bp);
    } else {
      bp = FUNC3(authp, bp, nlen);
      txt = authp->in.name;
      txtlen = FUNC22(authp->in.name);
    }
  } else {
    txt = "";
    txtlen = 0;
  }

  FUNC11(LogPHASE, "Pap Input: %s (%.*s)\n",
             papcodes[authp->in.hdr.code], txtlen, txt);

  switch (authp->in.hdr.code) {
    case PAP_REQUEST:
      if (bp == NULL) {
        FUNC11(LogPHASE, "Pap Input: No key given !\n");
        break;
      }
      bp = FUNC17(bp, &klen, 1);
      if (FUNC13(bp) < klen) {
        FUNC11(LogERROR, "Pap Input: Truncated key !\n");
        break;
      }
      if ((key = FUNC16(klen+1)) == NULL) {
        FUNC11(LogERROR, "Pap Input: Out of memory !\n");
        break;
      }
      bp = FUNC17(bp, key, klen);
      key[klen] = '\0';

#ifndef NORADIUS
      if (*bundle->radius.cfg.file) {
        if (!FUNC21(&bundle->radius, authp, authp->in.name,
                                 key, FUNC22(key), NULL, 0))
          FUNC19(authp);
      } else
#endif
      if (FUNC5(bundle, authp->in.name, key))
        FUNC20(authp);
      else
        FUNC19(authp);

      FUNC9(key);
      break;

    case PAP_ACK:
      FUNC4(authp);
      if (p->link.lcp.auth_iwait == PROTO_PAP) {
        p->link.lcp.auth_iwait = 0;
        if (p->link.lcp.auth_ineed == 0)
          /*
           * We've succeeded in our ``login''
           * If we're not expecting  the peer to authenticate (or he already
           * has), proceed to network phase.
           */
          FUNC8(p->dl);
      }
      break;

    case PAP_NAK:
      FUNC4(authp);
      FUNC7(p->dl);
      break;
  }

  FUNC12(bp);
  return NULL;
}