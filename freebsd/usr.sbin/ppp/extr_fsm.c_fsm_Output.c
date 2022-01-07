
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct fsmheader {int code; int id; int length; } ;
typedef struct fsmheader u_char ;
struct mbuf {int dummy; } ;
struct fsm_opt_hdr {int dummy; } ;
struct fsm {TYPE_2__* link; int proto; int bundle; int LogLevel; TYPE_1__* fn; int state; } ;
struct TYPE_5__ {int lcp; int name; } ;
struct TYPE_4__ {int (* DecodeConfig ) (struct fsm*,struct fsmheader*,struct fsmheader*,int ,int *) ;} ;






 int Code2Nam (int) ;
 scalar_t__ LINK_QUEUES (TYPE_2__*) ;
 int LogDEBUG ;
 scalar_t__ MBUF_CTOP (struct mbuf*) ;
 int MODE_NOP ;
 int State2Nam (int ) ;
 int htons (int) ;
 int lcp_SendIdentification (int *) ;
 int link_PushPacket (TYPE_2__*,struct mbuf*,int ,scalar_t__,int ) ;
 int log_DumpBp (int ,char*,struct mbuf*) ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,...) ;
 struct mbuf* m_get (int,int) ;
 int memcpy (scalar_t__,struct fsmheader*,unsigned int) ;
 int stub1 (struct fsm*,struct fsmheader*,struct fsmheader*,int ,int *) ;

void
fsm_Output(struct fsm *fp, u_int code, u_int id, u_char *ptr, unsigned count,
           int mtype)
{
  int plen;
  struct fsmheader lh;
  struct mbuf *bp;

  if (log_IsKept(fp->LogLevel)) {
    log_Printf(fp->LogLevel, "%s: Send%s(%d) state = %s\n",
              fp->link->name, Code2Nam(code), id, State2Nam(fp->state));
    switch (code) {
      case 128:
      case 131:
      case 129:
      case 130:
        (*fp->fn->DecodeConfig)(fp, ptr, ptr + count, MODE_NOP, ((void*)0));
        if (count < sizeof(struct fsm_opt_hdr))
          log_Printf(fp->LogLevel, "  [EMPTY]\n");
        break;
    }
  }

  plen = sizeof(struct fsmheader) + count;
  lh.code = code;
  lh.id = id;
  lh.length = htons(plen);
  bp = m_get(plen, mtype);
  memcpy(MBUF_CTOP(bp), &lh, sizeof(struct fsmheader));
  if (count)
    memcpy(MBUF_CTOP(bp) + sizeof(struct fsmheader), ptr, count);
  log_DumpBp(LogDEBUG, "fsm_Output", bp);
  link_PushPacket(fp->link, bp, fp->bundle, LINK_QUEUES(fp->link) - 1,
                  fp->proto);

  if (code == 129)
    lcp_SendIdentification(&fp->link->lcp);
}
