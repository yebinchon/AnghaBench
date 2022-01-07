
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {scalar_t__ SampleOctets; } ;
struct TYPE_17__ {scalar_t__ SampleOctets; } ;
struct TYPE_19__ {TYPE_7__ out; TYPE_6__ in; int Timer; } ;
struct TYPE_20__ {TYPE_8__ total; } ;
struct TYPE_14__ {int StoppedTimer; int OpenTimer; int FsmTimer; } ;
struct TYPE_15__ {TYPE_3__ fsm; } ;
struct TYPE_12__ {int StoppedTimer; int OpenTimer; int FsmTimer; } ;
struct TYPE_13__ {TYPE_1__ fsm; } ;
struct TYPE_11__ {TYPE_9__ stats; TYPE_4__ ccp; TYPE_2__ lcp; } ;
struct physical {int fd; TYPE_10__ link; scalar_t__ session_owner; TYPE_5__* dl; struct device* handler; int hdlc; } ;
struct iovec {int iov_len; int * iov_base; } ;
struct device {int (* device2iov ) (struct device*,struct iovec*,int*,int,int*,int*) ;scalar_t__ type; } ;
typedef scalar_t__ pid_t ;
struct TYPE_16__ {int bundle; } ;


 int AbortProgram (int ) ;
 int EX_OSERR ;
 scalar_t__ Enabled (int ,int ) ;
 int LogALERT ;
 int LogERROR ;
 int OPT_KEEPSESSION ;
 int SAMPLE_PERIOD ;
 int free (struct physical*) ;
 scalar_t__ getpgrp () ;
 scalar_t__ getpid () ;
 int hdlc_StopTimer (int *) ;
 int log_Printf (int ,char*,...) ;
 int lqr_StopTimer (struct physical*) ;
 int * malloc (int) ;
 int memcpy (int *,struct device*,int) ;
 int physical_MaxDeviceSize () ;
 int stub1 (struct device*,struct iovec*,int*,int,int*,int*) ;
 scalar_t__ tcgetpgrp (int) ;
 int timer_Stop (int *) ;

int
physical2iov(struct physical *p, struct iovec *iov, int *niov, int maxiov,
             int *auxfd, int *nauxfd)
{
  struct device *h;
  int sz;

  h = ((void*)0);
  if (p) {
    hdlc_StopTimer(&p->hdlc);
    lqr_StopTimer(p);
    timer_Stop(&p->link.lcp.fsm.FsmTimer);
    timer_Stop(&p->link.ccp.fsm.FsmTimer);
    timer_Stop(&p->link.lcp.fsm.OpenTimer);
    timer_Stop(&p->link.ccp.fsm.OpenTimer);
    timer_Stop(&p->link.lcp.fsm.StoppedTimer);
    timer_Stop(&p->link.ccp.fsm.StoppedTimer);
    if (p->handler) {
      h = p->handler;
      p->handler = (struct device *)(long)p->handler->type;
    }

    if (Enabled(p->dl->bundle, OPT_KEEPSESSION) ||
        tcgetpgrp(p->fd) == getpgrp())
      p->session_owner = getpid();
    else
      p->session_owner = (pid_t)-1;
    timer_Stop(&p->link.stats.total.Timer);
  }

  if (*niov + 2 >= maxiov) {
    log_Printf(LogERROR, "physical2iov: No room for physical + throughput"
               " + device !\n");
    if (p)
      free(p);
    return -1;
  }

  iov[*niov].iov_base = (void *)p;
  iov[*niov].iov_len = sizeof *p;
  (*niov)++;

  iov[*niov].iov_base = p ? (void *)p->link.stats.total.in.SampleOctets : ((void*)0);
  iov[*niov].iov_len = SAMPLE_PERIOD * sizeof(long long);
  (*niov)++;
  iov[*niov].iov_base = p ? (void *)p->link.stats.total.out.SampleOctets : ((void*)0);
  iov[*niov].iov_len = SAMPLE_PERIOD * sizeof(long long);
  (*niov)++;

  sz = physical_MaxDeviceSize();
  if (p) {
    if (h && h->device2iov)
      (*h->device2iov)(h, iov, niov, maxiov, auxfd, nauxfd);
    else {
      if ((iov[*niov].iov_base = malloc(sz)) == ((void*)0)) {
 log_Printf(LogALERT, "physical2iov: Out of memory (%d bytes)\n", sz);
 AbortProgram(EX_OSERR);
      }
      if (h)
        memcpy(iov[*niov].iov_base, h, sizeof *h);
      iov[*niov].iov_len = sz;
      (*niov)++;
    }
  } else {
    iov[*niov].iov_base = ((void*)0);
    iov[*niov].iov_len = sz;
    (*niov)++;
  }

  return p ? p->fd : 0;
}
