
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {struct datalink* object; int LayerFinish; int LayerDown; int LayerUp; int LayerStart; } ;
struct TYPE_13__ {char* phone; int fsmretry; scalar_t__ delay; } ;
struct TYPE_24__ {scalar_t__ opmask; } ;
struct TYPE_23__ {int timeout; scalar_t__ max; } ;
struct TYPE_22__ {int max; int maxinc; scalar_t__ inc; int timeout; int next_timeout; } ;
struct TYPE_18__ {char* list; } ;
struct TYPE_17__ {char* dial; char* login; char* logout; char* hangup; } ;
struct TYPE_14__ {TYPE_10__ cbcp; TYPE_9__ callback; TYPE_8__ reconnect; TYPE_7__ dial; TYPE_3__ phone; TYPE_2__ script; } ;
struct TYPE_21__ {scalar_t__ tries; int timer; } ;
struct TYPE_20__ {int run; int packetmode; } ;
struct TYPE_19__ {char* list; char* chosen; int * alt; int * next; } ;
struct TYPE_16__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct datalink {struct datalink* name; int * physical; int chat; int cbcp; int chap; int pap; TYPE_12__ fsmp; int * parent; int peer; TYPE_11__ cfg; scalar_t__ reconnect_tries; TYPE_6__ dial; int * next; struct bundle* bundle; int mp; TYPE_5__ script; scalar_t__ stayonline; TYPE_4__ phone; int state; TYPE_1__ desc; } ;
struct bundle {int fsm; } ;


 int DATALINK_CLOSED ;
 int DATALINK_DESCRIPTOR ;
 int DEF_FSMRETRY ;
 int DIAL_NEXT_TIMEOUT ;
 int DIAL_TIMEOUT ;
 int LogPHASE ;
 int RECONNECT_TIMEOUT ;
 int cbcp_Init (int *,int *) ;
 int chap_Init (int *,int *) ;
 int chat_Init (int *,int *) ;
 int datalink_IsSet ;
 int datalink_LayerDown ;
 int datalink_LayerFinish ;
 int datalink_LayerStart ;
 int datalink_LayerUp ;
 int datalink_Read ;
 int datalink_State (struct datalink*) ;
 int datalink_UpdateSet ;
 int datalink_Write ;
 int free (struct datalink*) ;
 int log_Printf (int ,char*,struct datalink*,int ) ;
 scalar_t__ malloc (int) ;
 int memset (int *,char,int) ;
 int mp_linkInit (int *) ;
 int pap_Init (int *,int *) ;
 int peerid_Init (int *) ;
 int * physical_Create (struct datalink*,int) ;
 struct datalink* strdup (char const*) ;

struct datalink *
datalink_Create(const char *name, struct bundle *bundle, int type)
{
  struct datalink *dl;

  dl = (struct datalink *)malloc(sizeof(struct datalink));
  if (dl == ((void*)0))
    return dl;

  dl->desc.type = DATALINK_DESCRIPTOR;
  dl->desc.UpdateSet = datalink_UpdateSet;
  dl->desc.IsSet = datalink_IsSet;
  dl->desc.Read = datalink_Read;
  dl->desc.Write = datalink_Write;

  dl->state = DATALINK_CLOSED;

  *dl->cfg.script.dial = '\0';
  *dl->cfg.script.login = '\0';
  *dl->cfg.script.logout = '\0';
  *dl->cfg.script.hangup = '\0';
  *dl->cfg.phone.list = '\0';
  *dl->phone.list = '\0';
  dl->phone.next = ((void*)0);
  dl->phone.alt = ((void*)0);
  dl->phone.chosen = "N/A";
  dl->stayonline = 0;
  dl->script.run = 1;
  dl->script.packetmode = 1;
  mp_linkInit(&dl->mp);

  dl->bundle = bundle;
  dl->next = ((void*)0);

  memset(&dl->dial.timer, '\0', sizeof dl->dial.timer);

  dl->dial.tries = 0;
  dl->cfg.dial.max = 1;
  dl->cfg.dial.next_timeout = DIAL_NEXT_TIMEOUT;
  dl->cfg.dial.timeout = DIAL_TIMEOUT;
  dl->cfg.dial.inc = 0;
  dl->cfg.dial.maxinc = 10;

  dl->reconnect_tries = 0;
  dl->cfg.reconnect.max = 0;
  dl->cfg.reconnect.timeout = RECONNECT_TIMEOUT;

  dl->cfg.callback.opmask = 0;
  dl->cfg.cbcp.delay = 0;
  *dl->cfg.cbcp.phone = '\0';
  dl->cfg.cbcp.fsmretry = DEF_FSMRETRY;

  dl->name = strdup(name);
  peerid_Init(&dl->peer);
  dl->parent = &bundle->fsm;
  dl->fsmp.LayerStart = datalink_LayerStart;
  dl->fsmp.LayerUp = datalink_LayerUp;
  dl->fsmp.LayerDown = datalink_LayerDown;
  dl->fsmp.LayerFinish = datalink_LayerFinish;
  dl->fsmp.object = dl;

  if ((dl->physical = physical_Create(dl, type)) == ((void*)0)) {
    free(dl->name);
    free(dl);
    return ((void*)0);
  }

  pap_Init(&dl->pap, dl->physical);
  chap_Init(&dl->chap, dl->physical);
  cbcp_Init(&dl->cbcp, dl->physical);

  memset(&dl->chat, '\0', sizeof dl->chat);
  chat_Init(&dl->chat, dl->physical);

  log_Printf(LogPHASE, "%s: Created in %s state\n",
             dl->name, datalink_State(dl));

  return dl;
}
