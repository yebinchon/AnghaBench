#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct fdescriptor {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  desc; } ;
struct TYPE_26__ {int /*<<< orphan*/ * hangup; int /*<<< orphan*/ * login; int /*<<< orphan*/ * dial; } ;
struct TYPE_22__ {int max; } ;
struct TYPE_27__ {TYPE_8__ script; TYPE_4__ dial; } ;
struct TYPE_17__ {int /*<<< orphan*/  state; int /*<<< orphan*/  desc; } ;
struct TYPE_19__ {int /*<<< orphan*/ * alt; } ;
struct TYPE_25__ {int /*<<< orphan*/  run; } ;
struct TYPE_21__ {int /*<<< orphan*/  state; } ;
struct TYPE_23__ {int tries; TYPE_3__ timer; } ;
struct datalink {int state; int name; TYPE_10__* physical; TYPE_2__ chap; TYPE_9__ cfg; TYPE_13__ chat; TYPE_1__ phone; TYPE_7__ script; TYPE_14__* bundle; TYPE_5__ dial; int /*<<< orphan*/  reconnect_tries; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_24__ {int full; } ;
struct TYPE_18__ {int /*<<< orphan*/  CleaningUp; } ;
struct TYPE_16__ {int type; int /*<<< orphan*/  desc; TYPE_6__ name; } ;

/* Variables and functions */
#define  CARRIER_LOST 144 
#define  CARRIER_OK 143 
#define  CARRIER_PENDING 142 
#define  CHAT_DONE 141 
#define  CHAT_FAILED 140 
#define  DATALINK_AUTH 139 
#define  DATALINK_CARRIER 138 
#define  DATALINK_CBCP 137 
#define  DATALINK_CLOSED 136 
#define  DATALINK_DIAL 135 
#define  DATALINK_HANGUP 134 
#define  DATALINK_LCP 133 
#define  DATALINK_LOGIN 132 
#define  DATALINK_LOGOUT 131 
#define  DATALINK_OPEN 130 
#define  DATALINK_OPENING 129 
#define  DATALINK_READY 128 
 int /*<<< orphan*/  EX_REDIAL ; 
 int /*<<< orphan*/  LogCHAT ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 int PHYS_BACKGROUND ; 
 int PHYS_DDIAL ; 
 int PHYS_DEDICATED ; 
 int PHYS_DIRECT ; 
 int PHYS_FOREGROUND ; 
 int /*<<< orphan*/  TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_14__*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC4 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC6 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC7 (struct datalink*,int const) ; 
 int FUNC8 (struct datalink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct datalink*,int,int) ; 
 struct datalink* FUNC10 (struct fdescriptor*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct datalink*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_10__*) ; 

__attribute__((used)) static int
FUNC17(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                   int *n)
{
  struct datalink *dl = FUNC10(d);
  int result;

  result = 0;
  switch (dl->state) {
    case DATALINK_CLOSED:
      if ((dl->physical->type & (PHYS_DIRECT|PHYS_DEDICATED|PHYS_BACKGROUND|
                                 PHYS_FOREGROUND|PHYS_DDIAL)) &&
          !dl->bundle->CleaningUp)
        /*
         * Our first time in - DEDICATED & DDIAL never come down, and
         * DIRECT, FOREGROUND & BACKGROUND get deleted when they enter
         * DATALINK_CLOSED.  Go to DATALINK_OPENING via datalink_Up()
         * and fall through.
         */
        FUNC9(dl, 1, 1);
      else
        break;
      /* FALLTHROUGH */

    case DATALINK_OPENING:
      if (dl->dial.timer.state != TIMER_RUNNING) {
        if (--dl->dial.tries < 0)
          dl->dial.tries = 0;
        if (FUNC16(dl->physical) >= 0) {
          FUNC13(dl, "%s: Entering terminal mode on %s\r\n"
                           "Type `~?' for help\r\n", dl->name,
                           dl->physical->name.full);
          if (dl->script.run) {
            FUNC7(dl, DATALINK_DIAL);
            if (!FUNC2(&dl->chat, dl->cfg.script.dial,
                            *dl->cfg.script.dial ?
                            FUNC3(dl) : ""))
              FUNC12(LogWARN, "Invalid dial script\n");
            if (!(dl->physical->type & (PHYS_DDIAL|PHYS_DEDICATED)) &&
                dl->cfg.dial.max)
              FUNC12(LogCHAT, "%s: Dial attempt %u of %d\n",
                        dl->name, dl->cfg.dial.max - dl->dial.tries,
                        dl->cfg.dial.max);
          } else
            FUNC7(dl, DATALINK_CARRIER);
          return FUNC17(d, r, w, e, n);
        } else {
          if (!(dl->physical->type & (PHYS_DDIAL|PHYS_DEDICATED)) &&
              dl->cfg.dial.max)
            FUNC12(LogCHAT, "Failed to open device (attempt %u of %d)\n",
                       dl->cfg.dial.max - dl->dial.tries, dl->cfg.dial.max);
          else
            FUNC12(LogCHAT, "Failed to open device\n");

          if (dl->bundle->CleaningUp ||
              (!(dl->physical->type & (PHYS_DDIAL|PHYS_DEDICATED)) &&
               dl->cfg.dial.max && dl->dial.tries == 0)) {
            FUNC7(dl, DATALINK_CLOSED);
            dl->reconnect_tries = 0;
            dl->dial.tries = -1;
            FUNC13(dl, "Failed to open %s\n",
                             dl->physical->name.full);
            FUNC0(dl->bundle, dl);
          }
          if (!dl->bundle->CleaningUp) {
            int timeout;

            timeout = FUNC8(dl, FUNC4(dl));
            FUNC1(dl->bundle, EX_REDIAL);
            FUNC13(dl, "Failed to open %s, pause %d seconds\n",
                             dl->physical->name.full, timeout);
          }
        }
      }
      break;

    case DATALINK_CARRIER:
      /* Wait for carrier on the device */
      switch (FUNC14(dl->physical)) {
        case CARRIER_PENDING:
          FUNC12(LogDEBUG, "Waiting for carrier\n");
          return 0;	/* A device timer is running to wake us up again */

        case CARRIER_OK:
          if (dl->script.run) {
            FUNC7(dl, DATALINK_LOGIN);
            if (!FUNC2(&dl->chat, dl->cfg.script.login, NULL))
              FUNC12(LogWARN, "Invalid login script\n");
          } else
            FUNC6(dl);
          return FUNC17(d, r, w, e, n);

        case CARRIER_LOST:
          FUNC15(dl->physical);	/* Is this required ? */
          if (dl->script.run) {
            FUNC7(dl, DATALINK_HANGUP);
            if (!FUNC2(&dl->chat, dl->cfg.script.hangup, NULL))
              FUNC12(LogWARN, "Invalid hangup script\n");
            return FUNC17(d, r, w, e, n);
          } else {
            FUNC5(dl);
            return 0;	/* Maybe bundle_CleanDatalinks() has something to do */
          }
      }

    case DATALINK_HANGUP:
    case DATALINK_DIAL:
    case DATALINK_LOGOUT:
    case DATALINK_LOGIN:
      result = FUNC11(&dl->chat.desc, r, w, e, n);
      switch (dl->chat.state) {
        case CHAT_DONE:
          /* script succeeded */
          switch(dl->state) {
            case DATALINK_HANGUP:
              FUNC5(dl);
              break;
            case DATALINK_DIAL:
              FUNC7(dl, DATALINK_CARRIER);
              return FUNC17(d, r, w, e, n);
            case DATALINK_LOGOUT:
              FUNC7(dl, DATALINK_HANGUP);
              FUNC15(dl->physical);
              if (!FUNC2(&dl->chat, dl->cfg.script.hangup, NULL))
                FUNC12(LogWARN, "Invalid hangup script\n");
              return FUNC17(d, r, w, e, n);
            case DATALINK_LOGIN:
              dl->phone.alt = NULL;
              FUNC6(dl);
              return FUNC17(d, r, w, e, n);
          }
          break;
        case CHAT_FAILED:
          /* Going down - script failed */
          FUNC12(LogWARN, "Chat script failed\n");
          switch(dl->state) {
            case DATALINK_HANGUP:
              FUNC5(dl);
              break;
            case DATALINK_DIAL:
            case DATALINK_LOGOUT:
            case DATALINK_LOGIN:
              FUNC7(dl, DATALINK_HANGUP);
              FUNC15(dl->physical);
              if (!FUNC2(&dl->chat, dl->cfg.script.hangup, NULL))
                FUNC12(LogWARN, "Invalid hangup script\n");
              return FUNC17(d, r, w, e, n);
          }
          break;
      }
      break;

    case DATALINK_READY:
    case DATALINK_LCP:
    case DATALINK_AUTH:
    case DATALINK_CBCP:
    case DATALINK_OPEN:
      result = FUNC11(&dl->chap.desc, r, w, e, n) +
               FUNC11(&dl->physical->desc, r, w, e, n);
      break;
  }
  return result;
}