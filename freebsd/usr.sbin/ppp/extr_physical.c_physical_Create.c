
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_21__ {int gather; int * parent; int total; } ;
struct TYPE_15__ {int len; int ccp; int lcp; int proto_out; int proto_in; int Queue; TYPE_5__ stats; int name; int type; } ;
struct TYPE_24__ {scalar_t__ delay; int necessity; } ;
struct TYPE_25__ {TYPE_8__ cd; int ndev; int devlist; int parity; int speed; int rts_cts; } ;
struct TYPE_23__ {char* full; char* base; } ;
struct TYPE_22__ {scalar_t__ sz; } ;
struct physical {int type; int fd; TYPE_10__ link; TYPE_9__ cfg; scalar_t__ session_owner; scalar_t__ Utmp; TYPE_7__ name; TYPE_6__ input; struct datalink* dl; scalar_t__ connect_count; int * out; int async; int hdlc; int * handler; } ;
struct datalink {int fsmp; TYPE_11__* bundle; int name; } ;
typedef scalar_t__ pid_t ;
struct TYPE_17__ {int total; } ;
struct TYPE_18__ {TYPE_1__ stats; } ;
struct TYPE_19__ {TYPE_2__ link; scalar_t__ active; } ;
struct TYPE_20__ {TYPE_3__ mp; } ;
struct TYPE_16__ {TYPE_4__ ncp; } ;


 int CD_DEFAULT ;
 int CS8 ;
 int MODEM_CTSRTS ;
 int MODEM_LIST ;
 int MODEM_SPEED ;
 int NMODEMS ;
 int PHYSICAL_LINK ;
 int SAMPLE_PERIOD ;
 int async_Init (int *) ;
 int ccp_Init (int *,TYPE_11__*,TYPE_10__*,int *) ;
 int hdlc_Init (int *,int *) ;
 int lcp_Init (int *,TYPE_11__*,TYPE_10__*,int *) ;
 int link_EmptyStack (TYPE_10__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,char,int) ;
 int physical_SetDescriptor (struct physical*) ;
 int throughput_init (int *,int ) ;

struct physical *
physical_Create(struct datalink *dl, int type)
{
  struct physical *p;

  p = (struct physical *)malloc(sizeof(struct physical));
  if (!p)
    return ((void*)0);

  p->link.type = PHYSICAL_LINK;
  p->link.name = dl->name;
  p->link.len = sizeof *p;


  throughput_init(&p->link.stats.total, SAMPLE_PERIOD);
  p->link.stats.parent = dl->bundle->ncp.mp.active ?
    &dl->bundle->ncp.mp.link.stats.total : ((void*)0);
  p->link.stats.gather = 1;

  memset(p->link.Queue, '\0', sizeof p->link.Queue);
  memset(p->link.proto_in, '\0', sizeof p->link.proto_in);
  memset(p->link.proto_out, '\0', sizeof p->link.proto_out);
  link_EmptyStack(&p->link);

  p->handler = ((void*)0);
  physical_SetDescriptor(p);
  p->type = type;

  hdlc_Init(&p->hdlc, &p->link.lcp);
  async_Init(&p->async);

  p->fd = -1;
  p->out = ((void*)0);
  p->connect_count = 0;
  p->dl = dl;
  p->input.sz = 0;
  *p->name.full = '\0';
  p->name.base = p->name.full;

  p->Utmp = 0;
  p->session_owner = (pid_t)-1;

  p->cfg.rts_cts = MODEM_CTSRTS;
  p->cfg.speed = MODEM_SPEED;
  p->cfg.parity = CS8;
  memcpy(p->cfg.devlist, MODEM_LIST, sizeof MODEM_LIST);
  p->cfg.ndev = NMODEMS;
  p->cfg.cd.necessity = CD_DEFAULT;
  p->cfg.cd.delay = 0;

  lcp_Init(&p->link.lcp, dl->bundle, &p->link, &dl->fsmp);
  ccp_Init(&p->link.ccp, dl->bundle, &p->link, &dl->fsmp);

  return p;
}
