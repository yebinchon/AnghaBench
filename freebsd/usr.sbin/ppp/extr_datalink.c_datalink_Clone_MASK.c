#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_15__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  cfg; } ;
struct TYPE_20__ {TYPE_4__ auth; } ;
struct TYPE_18__ {int /*<<< orphan*/  cfg; } ;
struct TYPE_19__ {struct datalink* object; } ;
struct TYPE_23__ {scalar_t__ tries; int /*<<< orphan*/  timer; } ;
struct TYPE_22__ {char* list; char* chosen; int /*<<< orphan*/ * alt; int /*<<< orphan*/ * next; } ;
struct TYPE_21__ {int /*<<< orphan*/  Write; int /*<<< orphan*/  Read; int /*<<< orphan*/  IsSet; int /*<<< orphan*/  UpdateSet; int /*<<< orphan*/  type; } ;
struct datalink {struct datalink* name; TYPE_9__* physical; int /*<<< orphan*/  chat; int /*<<< orphan*/  cbcp; TYPE_15__ chap; TYPE_10__ pap; TYPE_12__ fsmp; int /*<<< orphan*/  parent; int /*<<< orphan*/  peer; scalar_t__ reconnect_tries; TYPE_3__ dial; int /*<<< orphan*/ * next; int /*<<< orphan*/  bundle; TYPE_2__ phone; int /*<<< orphan*/  mp; TYPE_12__ cfg; int /*<<< orphan*/  state; TYPE_1__ desc; } ;
struct TYPE_28__ {TYPE_12__ cfg; } ;
struct TYPE_26__ {TYPE_12__ cfg; } ;
struct TYPE_25__ {TYPE_12__ cfg; } ;
struct TYPE_27__ {TYPE_6__ ccp; TYPE_5__ lcp; } ;
struct TYPE_29__ {TYPE_8__ async; TYPE_7__ link; TYPE_12__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATALINK_CLOSED ; 
 int /*<<< orphan*/  DATALINK_DESCRIPTOR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  PHYS_INTERACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  datalink_IsSet ; 
 int /*<<< orphan*/  datalink_Read ; 
 int /*<<< orphan*/  FUNC3 (struct datalink*) ; 
 int /*<<< orphan*/  datalink_UpdateSet ; 
 int /*<<< orphan*/  datalink_Write ; 
 int /*<<< orphan*/  FUNC4 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct datalink*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*,TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC12 (struct datalink*,int /*<<< orphan*/ ) ; 
 struct datalink* FUNC13 (char const*) ; 

struct datalink *
FUNC14(struct datalink *odl, const char *name)
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

  FUNC7(&dl->cfg, &odl->cfg, sizeof dl->cfg);
  FUNC9(&dl->mp);
  *dl->phone.list = '\0';
  dl->phone.next = NULL;
  dl->phone.alt = NULL;
  dl->phone.chosen = "N/A";
  dl->bundle = odl->bundle;
  dl->next = NULL;
  FUNC8(&dl->dial.timer, '\0', sizeof dl->dial.timer);
  dl->dial.tries = 0;
  dl->reconnect_tries = 0;
  dl->name = FUNC13(name);
  FUNC11(&dl->peer);
  dl->parent = odl->parent;
  FUNC7(&dl->fsmp, &odl->fsmp, sizeof dl->fsmp);
  dl->fsmp.object = dl;

  if ((dl->physical = FUNC12(dl, PHYS_INTERACTIVE)) == NULL) {
    FUNC4(dl->name);
    FUNC4(dl);
    return NULL;
  }
  FUNC10(&dl->pap, dl->physical);
  dl->pap.cfg = odl->pap.cfg;

  FUNC1(&dl->chap, dl->physical);
  dl->chap.auth.cfg = odl->chap.auth.cfg;

  FUNC7(&dl->physical->cfg, &odl->physical->cfg, sizeof dl->physical->cfg);
  FUNC7(&dl->physical->link.lcp.cfg, &odl->physical->link.lcp.cfg,
         sizeof dl->physical->link.lcp.cfg);
  FUNC7(&dl->physical->link.ccp.cfg, &odl->physical->link.ccp.cfg,
         sizeof dl->physical->link.ccp.cfg);
  FUNC7(&dl->physical->async.cfg, &odl->physical->async.cfg,
         sizeof dl->physical->async.cfg);

  FUNC0(&dl->cbcp, dl->physical);

  FUNC8(&dl->chat, '\0', sizeof dl->chat);	/* Force buf{start,end} reset */
  FUNC2(&dl->chat, dl->physical);

  FUNC5(LogPHASE, "%s: Cloned in %s state\n",
             dl->name, FUNC3(dl));

  return dl;
}