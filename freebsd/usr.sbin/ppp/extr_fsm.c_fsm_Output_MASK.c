#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct fsmheader {int code; int id; int /*<<< orphan*/  length; } ;
typedef  struct fsmheader u_char ;
struct mbuf {int dummy; } ;
struct fsm_opt_hdr {int dummy; } ;
struct fsm {TYPE_2__* link; int /*<<< orphan*/  proto; int /*<<< orphan*/  bundle; int /*<<< orphan*/  LogLevel; TYPE_1__* fn; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int /*<<< orphan*/  lcp; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* DecodeConfig ) (struct fsm*,struct fsmheader*,struct fsmheader*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
#define  CODE_CONFIGACK 131 
#define  CODE_CONFIGNAK 130 
#define  CODE_CONFIGREJ 129 
#define  CODE_CONFIGREQ 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  MODE_NOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct mbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct mbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 struct mbuf* FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct fsmheader*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct fsm*,struct fsmheader*,struct fsmheader*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC13(struct fsm *fp, u_int code, u_int id, u_char *ptr, unsigned count,
           int mtype)
{
  int plen;
  struct fsmheader lh;
  struct mbuf *bp;

  if (FUNC8(fp->LogLevel)) {
    FUNC9(fp->LogLevel, "%s: Send%s(%d) state = %s\n",
              fp->link->name, FUNC0(code), id, FUNC3(fp->state));
    switch (code) {
      case CODE_CONFIGREQ:
      case CODE_CONFIGACK:
      case CODE_CONFIGREJ:
      case CODE_CONFIGNAK:
        (*fp->fn->DecodeConfig)(fp, ptr, ptr + count, MODE_NOP, NULL);
        if (count < sizeof(struct fsm_opt_hdr))
          FUNC9(fp->LogLevel, "  [EMPTY]\n");
        break;
    }
  }

  plen = sizeof(struct fsmheader) + count;
  lh.code = code;
  lh.id = id;
  lh.length = FUNC4(plen);
  bp = FUNC10(plen, mtype);
  FUNC11(FUNC2(bp), &lh, sizeof(struct fsmheader));
  if (count)
    FUNC11(FUNC2(bp) + sizeof(struct fsmheader), ptr, count);
  FUNC7(LogDEBUG, "fsm_Output", bp);
  FUNC6(fp->link, bp, fp->bundle, FUNC1(fp->link) - 1,
                  fp->proto);

  if (code == CODE_CONFIGREJ)
    FUNC5(&fp->link->lcp);
}