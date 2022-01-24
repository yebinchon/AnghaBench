#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ SampleOctets; } ;
struct TYPE_17__ {scalar_t__ SampleOctets; } ;
struct TYPE_19__ {TYPE_7__ out; TYPE_6__ in; int /*<<< orphan*/  Timer; } ;
struct TYPE_20__ {TYPE_8__ total; } ;
struct TYPE_14__ {int /*<<< orphan*/  StoppedTimer; int /*<<< orphan*/  OpenTimer; int /*<<< orphan*/  FsmTimer; } ;
struct TYPE_15__ {TYPE_3__ fsm; } ;
struct TYPE_12__ {int /*<<< orphan*/  StoppedTimer; int /*<<< orphan*/  OpenTimer; int /*<<< orphan*/  FsmTimer; } ;
struct TYPE_13__ {TYPE_1__ fsm; } ;
struct TYPE_11__ {TYPE_9__ stats; TYPE_4__ ccp; TYPE_2__ lcp; } ;
struct physical {int fd; TYPE_10__ link; scalar_t__ session_owner; TYPE_5__* dl; struct device* handler; int /*<<< orphan*/  hdlc; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct device {int /*<<< orphan*/  (* device2iov ) (struct device*,struct iovec*,int*,int,int*,int*) ;scalar_t__ type; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_16__ {int /*<<< orphan*/  bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EX_OSERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  OPT_KEEPSESSION ; 
 int SAMPLE_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (struct physical*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct physical*) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct device*,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct iovec*,int*,int,int*,int*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(struct physical *p, struct iovec *iov, int *niov, int maxiov,
             int *auxfd, int *nauxfd)
{
  struct device *h;
  int sz;

  h = NULL;
  if (p) {
    FUNC5(&p->hdlc);
    FUNC7(p);
    FUNC13(&p->link.lcp.fsm.FsmTimer);
    FUNC13(&p->link.ccp.fsm.FsmTimer);
    FUNC13(&p->link.lcp.fsm.OpenTimer);
    FUNC13(&p->link.ccp.fsm.OpenTimer);
    FUNC13(&p->link.lcp.fsm.StoppedTimer);
    FUNC13(&p->link.ccp.fsm.StoppedTimer);
    if (p->handler) {
      h = p->handler;
      p->handler = (struct device *)(long)p->handler->type;
    }

    if (FUNC1(p->dl->bundle, OPT_KEEPSESSION) ||
        FUNC12(p->fd) == FUNC3())
      p->session_owner = FUNC4();      /* So I'll eventually get HUP'd */
    else
      p->session_owner = (pid_t)-1;
    FUNC13(&p->link.stats.total.Timer);
  }

  if (*niov + 2 >= maxiov) {
    FUNC6(LogERROR, "physical2iov: No room for physical + throughput"
               " + device !\n");
    if (p)
      FUNC2(p);
    return -1;
  }

  iov[*niov].iov_base = (void *)p;
  iov[*niov].iov_len = sizeof *p;
  (*niov)++;

  iov[*niov].iov_base = p ? (void *)p->link.stats.total.in.SampleOctets : NULL;
  iov[*niov].iov_len = SAMPLE_PERIOD * sizeof(long long);
  (*niov)++;
  iov[*niov].iov_base = p ? (void *)p->link.stats.total.out.SampleOctets : NULL;
  iov[*niov].iov_len = SAMPLE_PERIOD * sizeof(long long);
  (*niov)++;

  sz = FUNC10();
  if (p) {
    if (h && h->device2iov)
      (*h->device2iov)(h, iov, niov, maxiov, auxfd, nauxfd);
    else {
      if ((iov[*niov].iov_base = FUNC8(sz)) == NULL) {
	FUNC6(LogALERT, "physical2iov: Out of memory (%d bytes)\n", sz);
	FUNC0(EX_OSERR);
      }
      if (h)
        FUNC9(iov[*niov].iov_base, h, sizeof *h);
      iov[*niov].iov_len = sz;
      (*niov)++;
    }
  } else {
    iov[*niov].iov_base = NULL;
    iov[*niov].iov_len = sz;
    (*niov)++;
  }

  return p ? p->fd : 0;
}