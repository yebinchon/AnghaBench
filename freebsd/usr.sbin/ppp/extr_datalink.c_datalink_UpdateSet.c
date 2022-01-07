
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct fdescriptor {int dummy; } ;
struct TYPE_20__ {int desc; } ;
struct TYPE_26__ {int * hangup; int * login; int * dial; } ;
struct TYPE_22__ {int max; } ;
struct TYPE_27__ {TYPE_8__ script; TYPE_4__ dial; } ;
struct TYPE_17__ {int state; int desc; } ;
struct TYPE_19__ {int * alt; } ;
struct TYPE_25__ {int run; } ;
struct TYPE_21__ {int state; } ;
struct TYPE_23__ {int tries; TYPE_3__ timer; } ;
struct datalink {int state; int name; TYPE_10__* physical; TYPE_2__ chap; TYPE_9__ cfg; TYPE_13__ chat; TYPE_1__ phone; TYPE_7__ script; TYPE_14__* bundle; TYPE_5__ dial; int reconnect_tries; } ;
typedef int fd_set ;
struct TYPE_24__ {int full; } ;
struct TYPE_18__ {int CleaningUp; } ;
struct TYPE_16__ {int type; int desc; TYPE_6__ name; } ;
 int EX_REDIAL ;
 int LogCHAT ;
 int LogDEBUG ;
 int LogWARN ;
 int PHYS_BACKGROUND ;
 int PHYS_DDIAL ;
 int PHYS_DEDICATED ;
 int PHYS_DIRECT ;
 int PHYS_FOREGROUND ;
 int TIMER_RUNNING ;
 int bundle_LinkClosed (TYPE_14__*,struct datalink*) ;
 int bundle_Notify (TYPE_14__*,int ) ;
 int chat_Setup (TYPE_13__*,int *,char*) ;
 char* datalink_ChoosePhoneNumber (struct datalink*) ;
 int datalink_GetDialTimeout (struct datalink*) ;
 int datalink_HangupDone (struct datalink*) ;
 int datalink_LoginDone (struct datalink*) ;
 int datalink_NewState (struct datalink*,int const) ;
 int datalink_StartDialTimer (struct datalink*,int ) ;
 int datalink_Up (struct datalink*,int,int) ;
 struct datalink* descriptor2datalink (struct fdescriptor*) ;
 int descriptor_UpdateSet (int *,int *,int *,int *,int*) ;
 int log_Printf (int ,char*,...) ;
 int log_WritePrompts (struct datalink*,char*,int,...) ;
 int physical_AwaitCarrier (TYPE_10__*) ;
 int physical_Offline (TYPE_10__*) ;
 int physical_Open (TYPE_10__*) ;

__attribute__((used)) static int
datalink_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                   int *n)
{
  struct datalink *dl = descriptor2datalink(d);
  int result;

  result = 0;
  switch (dl->state) {
    case 136:
      if ((dl->physical->type & (PHYS_DIRECT|PHYS_DEDICATED|PHYS_BACKGROUND|
                                 PHYS_FOREGROUND|PHYS_DDIAL)) &&
          !dl->bundle->CleaningUp)






        datalink_Up(dl, 1, 1);
      else
        break;


    case 129:
      if (dl->dial.timer.state != TIMER_RUNNING) {
        if (--dl->dial.tries < 0)
          dl->dial.tries = 0;
        if (physical_Open(dl->physical) >= 0) {
          log_WritePrompts(dl, "%s: Entering terminal mode on %s\r\n"
                           "Type `~?' for help\r\n", dl->name,
                           dl->physical->name.full);
          if (dl->script.run) {
            datalink_NewState(dl, 135);
            if (!chat_Setup(&dl->chat, dl->cfg.script.dial,
                            *dl->cfg.script.dial ?
                            datalink_ChoosePhoneNumber(dl) : ""))
              log_Printf(LogWARN, "Invalid dial script\n");
            if (!(dl->physical->type & (PHYS_DDIAL|PHYS_DEDICATED)) &&
                dl->cfg.dial.max)
              log_Printf(LogCHAT, "%s: Dial attempt %u of %d\n",
                        dl->name, dl->cfg.dial.max - dl->dial.tries,
                        dl->cfg.dial.max);
          } else
            datalink_NewState(dl, 138);
          return datalink_UpdateSet(d, r, w, e, n);
        } else {
          if (!(dl->physical->type & (PHYS_DDIAL|PHYS_DEDICATED)) &&
              dl->cfg.dial.max)
            log_Printf(LogCHAT, "Failed to open device (attempt %u of %d)\n",
                       dl->cfg.dial.max - dl->dial.tries, dl->cfg.dial.max);
          else
            log_Printf(LogCHAT, "Failed to open device\n");

          if (dl->bundle->CleaningUp ||
              (!(dl->physical->type & (PHYS_DDIAL|PHYS_DEDICATED)) &&
               dl->cfg.dial.max && dl->dial.tries == 0)) {
            datalink_NewState(dl, 136);
            dl->reconnect_tries = 0;
            dl->dial.tries = -1;
            log_WritePrompts(dl, "Failed to open %s\n",
                             dl->physical->name.full);
            bundle_LinkClosed(dl->bundle, dl);
          }
          if (!dl->bundle->CleaningUp) {
            int timeout;

            timeout = datalink_StartDialTimer(dl, datalink_GetDialTimeout(dl));
            bundle_Notify(dl->bundle, EX_REDIAL);
            log_WritePrompts(dl, "Failed to open %s, pause %d seconds\n",
                             dl->physical->name.full, timeout);
          }
        }
      }
      break;

    case 138:

      switch (physical_AwaitCarrier(dl->physical)) {
        case 142:
          log_Printf(LogDEBUG, "Waiting for carrier\n");
          return 0;

        case 143:
          if (dl->script.run) {
            datalink_NewState(dl, 132);
            if (!chat_Setup(&dl->chat, dl->cfg.script.login, ((void*)0)))
              log_Printf(LogWARN, "Invalid login script\n");
          } else
            datalink_LoginDone(dl);
          return datalink_UpdateSet(d, r, w, e, n);

        case 144:
          physical_Offline(dl->physical);
          if (dl->script.run) {
            datalink_NewState(dl, 134);
            if (!chat_Setup(&dl->chat, dl->cfg.script.hangup, ((void*)0)))
              log_Printf(LogWARN, "Invalid hangup script\n");
            return datalink_UpdateSet(d, r, w, e, n);
          } else {
            datalink_HangupDone(dl);
            return 0;
          }
      }

    case 134:
    case 135:
    case 131:
    case 132:
      result = descriptor_UpdateSet(&dl->chat.desc, r, w, e, n);
      switch (dl->chat.state) {
        case 141:

          switch(dl->state) {
            case 134:
              datalink_HangupDone(dl);
              break;
            case 135:
              datalink_NewState(dl, 138);
              return datalink_UpdateSet(d, r, w, e, n);
            case 131:
              datalink_NewState(dl, 134);
              physical_Offline(dl->physical);
              if (!chat_Setup(&dl->chat, dl->cfg.script.hangup, ((void*)0)))
                log_Printf(LogWARN, "Invalid hangup script\n");
              return datalink_UpdateSet(d, r, w, e, n);
            case 132:
              dl->phone.alt = ((void*)0);
              datalink_LoginDone(dl);
              return datalink_UpdateSet(d, r, w, e, n);
          }
          break;
        case 140:

          log_Printf(LogWARN, "Chat script failed\n");
          switch(dl->state) {
            case 134:
              datalink_HangupDone(dl);
              break;
            case 135:
            case 131:
            case 132:
              datalink_NewState(dl, 134);
              physical_Offline(dl->physical);
              if (!chat_Setup(&dl->chat, dl->cfg.script.hangup, ((void*)0)))
                log_Printf(LogWARN, "Invalid hangup script\n");
              return datalink_UpdateSet(d, r, w, e, n);
          }
          break;
      }
      break;

    case 128:
    case 133:
    case 139:
    case 137:
    case 130:
      result = descriptor_UpdateSet(&dl->chap.desc, r, w, e, n) +
               descriptor_UpdateSet(&dl->physical->desc, r, w, e, n);
      break;
  }
  return result;
}
