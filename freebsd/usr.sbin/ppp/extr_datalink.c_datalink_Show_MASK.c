#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct cmdargs {TYPE_11__* cx; int /*<<< orphan*/  prompt; } ;
struct TYPE_22__ {int opmask; char* msg; } ;
struct TYPE_21__ {int type; } ;
struct TYPE_20__ {char* max; char* timeout; } ;
struct TYPE_19__ {char* max; char* next_timeout; char* timeout; } ;
struct TYPE_18__ {char* list; } ;
struct TYPE_16__ {int /*<<< orphan*/  len; int /*<<< orphan*/  address; int /*<<< orphan*/  class; } ;
struct TYPE_17__ {char* authname; TYPE_3__ enddisc; } ;
struct TYPE_15__ {char* dial; char* login; char* logout; char* hangup; } ;
struct TYPE_14__ {char* delay; char* phone; char* fsmretry; } ;
struct TYPE_12__ {TYPE_2__ script; TYPE_1__ cbcp; TYPE_9__ callback; TYPE_7__ reconnect; TYPE_6__ dial; TYPE_5__ phone; } ;
struct TYPE_13__ {char* name; scalar_t__ state; TYPE_10__ cfg; TYPE_8__* physical; TYPE_4__ peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_AUTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CALLBACK_CBCP ; 
 int /*<<< orphan*/  CALLBACK_E164 ; 
 int /*<<< orphan*/  CALLBACK_NONE ; 
 scalar_t__ DATALINK_OPEN ; 
 int PHYS_DIRECT ; 
 char* FUNC1 (TYPE_11__*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(struct cmdargs const *arg)
{
  FUNC3(arg->prompt, "Name: %s\n", arg->cx->name);
  FUNC3(arg->prompt, " State:              %s\n",
                FUNC1(arg->cx));
  FUNC3(arg->prompt, " Peer name:          ");
  if (*arg->cx->peer.authname)
    FUNC3(arg->prompt, "%s\n", arg->cx->peer.authname);
  else if (arg->cx->state == DATALINK_OPEN)
    FUNC3(arg->prompt, "None requested\n");
  else
    FUNC3(arg->prompt, "N/A\n");
  FUNC3(arg->prompt, " Discriminator:      %s\n",
                FUNC2(arg->cx->peer.enddisc.class,
                           arg->cx->peer.enddisc.address,
                           arg->cx->peer.enddisc.len));

  FUNC3(arg->prompt, "\nDefaults:\n");
  FUNC3(arg->prompt, " Phone List:         %s\n",
                arg->cx->cfg.phone.list);
  if (arg->cx->cfg.dial.max)
    FUNC3(arg->prompt, " Dial tries:         %d, delay ",
                  arg->cx->cfg.dial.max);
  else
    FUNC3(arg->prompt, " Dial tries:         infinite, delay ");
  if (arg->cx->cfg.dial.next_timeout >= 0)
    FUNC3(arg->prompt, "%ds/", arg->cx->cfg.dial.next_timeout);
  else
    FUNC3(arg->prompt, "random/");
  if (arg->cx->cfg.dial.timeout >= 0)
    FUNC3(arg->prompt, "%ds\n", arg->cx->cfg.dial.timeout);
  else
    FUNC3(arg->prompt, "random\n");
  FUNC3(arg->prompt, " Reconnect tries:    %d, delay ",
                arg->cx->cfg.reconnect.max);
  if (arg->cx->cfg.reconnect.timeout > 0)
    FUNC3(arg->prompt, "%ds\n", arg->cx->cfg.reconnect.timeout);
  else
    FUNC3(arg->prompt, "random\n");
  FUNC3(arg->prompt, " Callback %s ", arg->cx->physical->type ==
                PHYS_DIRECT ?  "accepted: " : "requested:");
  if (!arg->cx->cfg.callback.opmask)
    FUNC3(arg->prompt, "none\n");
  else {
    int comma = 0;

    if (arg->cx->cfg.callback.opmask & FUNC0(CALLBACK_NONE)) {
      FUNC3(arg->prompt, "none");
      comma = 1;
    }
    if (arg->cx->cfg.callback.opmask & FUNC0(CALLBACK_AUTH)) {
      FUNC3(arg->prompt, "%sauth", comma ? ", " : "");
      comma = 1;
    }
    if (arg->cx->cfg.callback.opmask & FUNC0(CALLBACK_E164)) {
      FUNC3(arg->prompt, "%sE.164", comma ? ", " : "");
      if (arg->cx->physical->type != PHYS_DIRECT)
        FUNC3(arg->prompt, " (%s)", arg->cx->cfg.callback.msg);
      comma = 1;
    }
    if (arg->cx->cfg.callback.opmask & FUNC0(CALLBACK_CBCP)) {
      FUNC3(arg->prompt, "%scbcp\n", comma ? ", " : "");
      FUNC3(arg->prompt, " CBCP:               delay: %ds\n",
                    arg->cx->cfg.cbcp.delay);
      FUNC3(arg->prompt, "                     phone: ");
      if (!FUNC4(arg->cx->cfg.cbcp.phone, "*")) {
        if (arg->cx->physical->type & PHYS_DIRECT)
          FUNC3(arg->prompt, "Caller decides\n");
        else
          FUNC3(arg->prompt, "Dialback server decides\n");
      } else
        FUNC3(arg->prompt, "%s\n", arg->cx->cfg.cbcp.phone);
      FUNC3(arg->prompt, "                     timeout: %lds\n",
                    arg->cx->cfg.cbcp.fsmretry);
    } else
      FUNC3(arg->prompt, "\n");
  }

  FUNC3(arg->prompt, " Dial Script:        %s\n",
                arg->cx->cfg.script.dial);
  FUNC3(arg->prompt, " Login Script:       %s\n",
                arg->cx->cfg.script.login);
  FUNC3(arg->prompt, " Logout Script:      %s\n",
                arg->cx->cfg.script.logout);
  FUNC3(arg->prompt, " Hangup Script:      %s\n",
                arg->cx->cfg.script.hangup);
  return 0;
}