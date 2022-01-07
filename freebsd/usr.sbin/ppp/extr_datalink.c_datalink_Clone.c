
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_24__ {int cfg; } ;
struct TYPE_20__ {TYPE_4__ auth; } ;
struct TYPE_18__ {int cfg; } ;
struct TYPE_19__ {struct datalink* object; } ;
struct TYPE_23__ {scalar_t__ tries; int timer; } ;
struct TYPE_22__ {char* list; char* chosen; int * alt; int * next; } ;
struct TYPE_21__ {int Write; int Read; int IsSet; int UpdateSet; int type; } ;
struct datalink {struct datalink* name; TYPE_9__* physical; int chat; int cbcp; TYPE_15__ chap; TYPE_10__ pap; TYPE_12__ fsmp; int parent; int peer; scalar_t__ reconnect_tries; TYPE_3__ dial; int * next; int bundle; TYPE_2__ phone; int mp; TYPE_12__ cfg; int state; TYPE_1__ desc; } ;
struct TYPE_28__ {TYPE_12__ cfg; } ;
struct TYPE_26__ {TYPE_12__ cfg; } ;
struct TYPE_25__ {TYPE_12__ cfg; } ;
struct TYPE_27__ {TYPE_6__ ccp; TYPE_5__ lcp; } ;
struct TYPE_29__ {TYPE_8__ async; TYPE_7__ link; TYPE_12__ cfg; } ;


 int DATALINK_CLOSED ;
 int DATALINK_DESCRIPTOR ;
 int LogPHASE ;
 int PHYS_INTERACTIVE ;
 int cbcp_Init (int *,TYPE_9__*) ;
 int chap_Init (TYPE_15__*,TYPE_9__*) ;
 int chat_Init (int *,TYPE_9__*) ;
 int datalink_IsSet ;
 int datalink_Read ;
 int datalink_State (struct datalink*) ;
 int datalink_UpdateSet ;
 int datalink_Write ;
 int free (struct datalink*) ;
 int log_Printf (int ,char*,struct datalink*,int ) ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_12__*,TYPE_12__*,int) ;
 int memset (int *,char,int) ;
 int mp_linkInit (int *) ;
 int pap_Init (TYPE_10__*,TYPE_9__*) ;
 int peerid_Init (int *) ;
 TYPE_9__* physical_Create (struct datalink*,int ) ;
 struct datalink* strdup (char const*) ;

struct datalink *
datalink_Clone(struct datalink *odl, const char *name)
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

  memcpy(&dl->cfg, &odl->cfg, sizeof dl->cfg);
  mp_linkInit(&dl->mp);
  *dl->phone.list = '\0';
  dl->phone.next = ((void*)0);
  dl->phone.alt = ((void*)0);
  dl->phone.chosen = "N/A";
  dl->bundle = odl->bundle;
  dl->next = ((void*)0);
  memset(&dl->dial.timer, '\0', sizeof dl->dial.timer);
  dl->dial.tries = 0;
  dl->reconnect_tries = 0;
  dl->name = strdup(name);
  peerid_Init(&dl->peer);
  dl->parent = odl->parent;
  memcpy(&dl->fsmp, &odl->fsmp, sizeof dl->fsmp);
  dl->fsmp.object = dl;

  if ((dl->physical = physical_Create(dl, PHYS_INTERACTIVE)) == ((void*)0)) {
    free(dl->name);
    free(dl);
    return ((void*)0);
  }
  pap_Init(&dl->pap, dl->physical);
  dl->pap.cfg = odl->pap.cfg;

  chap_Init(&dl->chap, dl->physical);
  dl->chap.auth.cfg = odl->chap.auth.cfg;

  memcpy(&dl->physical->cfg, &odl->physical->cfg, sizeof dl->physical->cfg);
  memcpy(&dl->physical->link.lcp.cfg, &odl->physical->link.lcp.cfg,
         sizeof dl->physical->link.lcp.cfg);
  memcpy(&dl->physical->link.ccp.cfg, &odl->physical->link.ccp.cfg,
         sizeof dl->physical->link.ccp.cfg);
  memcpy(&dl->physical->async.cfg, &odl->physical->async.cfg,
         sizeof dl->physical->async.cfg);

  cbcp_Init(&dl->cbcp, dl->physical);

  memset(&dl->chat, '\0', sizeof dl->chat);
  chat_Init(&dl->chat, dl->physical);

  log_Printf(LogPHASE, "%s: Cloned in %s state\n",
             dl->name, datalink_State(dl));

  return dl;
}
