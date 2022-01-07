
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct mbuf {int dummy; } ;
struct cbcp_header {int length; int id; int code; } ;
struct cbcp_data {scalar_t__ length; } ;
struct TYPE_4__ {int id; } ;
struct cbcp {TYPE_3__* p; TYPE_1__ fsm; } ;
struct TYPE_6__ {int link; TYPE_2__* dl; } ;
struct TYPE_5__ {int bundle; } ;


 scalar_t__ LINK_QUEUES (int *) ;
 int LogDEBUG ;
 scalar_t__ MBUF_CTOP (struct mbuf*) ;
 int MB_CBCPOUT ;
 int PROTO_CBCP ;
 int htons (scalar_t__) ;
 int link_PushPacket (int *,struct mbuf*,int ,scalar_t__,int ) ;
 int log_DumpBp (int ,char*,struct mbuf*) ;
 struct mbuf* m_get (scalar_t__,int ) ;
 int memcpy (scalar_t__,struct cbcp_data*,scalar_t__) ;

__attribute__((used)) static void
cbcp_Output(struct cbcp *cbcp, u_char code, struct cbcp_data *data)
{
  struct cbcp_header *head;
  struct mbuf *bp;

  bp = m_get(sizeof *head + data->length, MB_CBCPOUT);
  head = (struct cbcp_header *)MBUF_CTOP(bp);
  head->code = code;
  head->id = cbcp->fsm.id;
  head->length = htons(sizeof *head + data->length);
  memcpy(MBUF_CTOP(bp) + sizeof *head, data, data->length);
  log_DumpBp(LogDEBUG, "cbcp_Output", bp);
  link_PushPacket(&cbcp->p->link, bp, cbcp->p->dl->bundle,
                  LINK_QUEUES(&cbcp->p->link) - 1, PROTO_CBCP);
}
