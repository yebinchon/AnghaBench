#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {struct datalink* object; int /*<<< orphan*/  LayerFinish; int /*<<< orphan*/  LayerDown; int /*<<< orphan*/  LayerUp; int /*<<< orphan*/  LayerStart; } ;
struct TYPE_13__ {char* phone; int /*<<< orphan*/  fsmretry; scalar_t__ delay; } ;
struct TYPE_24__ {scalar_t__ opmask; } ;
struct TYPE_23__ {int /*<<< orphan*/  timeout; scalar_t__ max; } ;
struct TYPE_22__ {int max; int maxinc; scalar_t__ inc; int /*<<< orphan*/  timeout; int /*<<< orphan*/  next_timeout; } ;
struct TYPE_18__ {char* list; } ;
struct TYPE_17__ {char* dial; char* login; char* logout; char* hangup; } ;
struct TYPE_14__ {TYPE_10__ cbcp; TYPE_9__ callback; TYPE_8__ reconnect; TYPE_7__ dial; TYPE_3__ phone; TYPE_2__ script; } ;
struct TYPE_21__ {scalar_t__ tries; int /*<<< orphan*/  timer; } ;
struct TYPE_20__ {int run; int packetmode; } ;
struct TYPE_19__ {char* list; char* chosen; int /*<<< orphan*/ * alt; int /*<<< orphan*/ * next; } ;
struct TYPE_16__ {int /*<<< orphan*/  Write; int /*<<< orphan*/  Read; int /*<<< orphan*/  IsSet; int /*<<< orphan*/  UpdateSet; int /*<<< orphan*/  type; } ;
struct datalink {struct datalink* name; int /*<<< orphan*/ * physical; int /*<<< orphan*/  chat; int /*<<< orphan*/  cbcp; int /*<<< orphan*/  chap; int /*<<< orphan*/  pap; TYPE_12__ fsmp; int /*<<< orphan*/ * parent; int /*<<< orphan*/  peer; TYPE_11__ cfg; scalar_t__ reconnect_tries; TYPE_6__ dial; int /*<<< orphan*/ * next; struct bundle* bundle; int /*<<< orphan*/  mp; TYPE_5__ script; scalar_t__ stayonline; TYPE_4__ phone; int /*<<< orphan*/  state; TYPE_1__ desc; } ;
struct bundle {int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATALINK_CLOSED ; 
 int /*<<< orphan*/  DATALINK_DESCRIPTOR ; 
 int /*<<< orphan*/  DEF_FSMRETRY ; 
 int /*<<< orphan*/  DIAL_NEXT_TIMEOUT ; 
 int /*<<< orphan*/  DIAL_TIMEOUT ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  RECONNECT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  datalink_IsSet ; 
 int /*<<< orphan*/  datalink_LayerDown ; 
 int /*<<< orphan*/  datalink_LayerFinish ; 
 int /*<<< orphan*/  datalink_LayerStart ; 
 int /*<<< orphan*/  datalink_LayerUp ; 
 int /*<<< orphan*/  datalink_Read ; 
 int /*<<< orphan*/  FUNC3 (struct datalink*) ; 
 int /*<<< orphan*/  datalink_UpdateSet ; 
 int /*<<< orphan*/  datalink_Write ; 
 int /*<<< orphan*/  FUNC4 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct datalink*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct datalink*,int) ; 
 struct datalink* FUNC12 (char const*) ; 

struct datalink *
FUNC13(const char *name, struct bundle *bundle, int type)
{
  struct datalink *dl;

  dl = (struct datalink *)FUNC6(sizeof(struct datalink));
  if (dl == NULL)
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
  dl->phone.next = NULL;
  dl->phone.alt = NULL;
  dl->phone.chosen = "N/A";
  dl->stayonline = 0;
  dl->script.run = 1;
  dl->script.packetmode = 1;
  FUNC8(&dl->mp);

  dl->bundle = bundle;
  dl->next = NULL;

  FUNC7(&dl->dial.timer, '\0', sizeof dl->dial.timer);

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

  dl->name = FUNC12(name);
  FUNC10(&dl->peer);
  dl->parent = &bundle->fsm;
  dl->fsmp.LayerStart = datalink_LayerStart;
  dl->fsmp.LayerUp = datalink_LayerUp;
  dl->fsmp.LayerDown = datalink_LayerDown;
  dl->fsmp.LayerFinish = datalink_LayerFinish;
  dl->fsmp.object = dl;

  if ((dl->physical = FUNC11(dl, type)) == NULL) {
    FUNC4(dl->name);
    FUNC4(dl);
    return NULL;
  }

  FUNC9(&dl->pap, dl->physical);
  FUNC1(&dl->chap, dl->physical);
  FUNC0(&dl->cbcp, dl->physical);

  FUNC7(&dl->chat, '\0', sizeof dl->chat);	/* Force buf{start,end} reset */
  FUNC2(&dl->chat, dl->physical);

  FUNC5(LogPHASE, "%s: Created in %s state\n",
             dl->name, FUNC3(dl));

  return dl;
}