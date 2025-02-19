
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_13__ {int total; } ;
struct TYPE_14__ {TYPE_6__ stats; int name; } ;
struct cd {scalar_t__ necessity; int delay; } ;
struct TYPE_12__ {char* devlist; int ndev; int parity; struct cd cd; scalar_t__ rts_cts; int speed; } ;
struct TYPE_8__ {char* full; } ;
struct physical {scalar_t__ fd; scalar_t__ type; scalar_t__ session_owner; TYPE_7__ link; TYPE_5__ cfg; TYPE_4__* handler; int connect_count; TYPE_1__ name; } ;
struct cmdargs {int prompt; TYPE_3__* cx; } ;
typedef scalar_t__ pid_t ;
struct TYPE_11__ {struct cd cd; int (* openinfo ) (struct physical*) ;} ;
struct TYPE_9__ {int chosen; } ;
struct TYPE_10__ {struct physical* physical; TYPE_2__ phone; } ;


 scalar_t__ CD_DEFAULT ;
 scalar_t__ CD_NOTREQUIRED ;
 scalar_t__ CD_REQUIRED ;


 int CSIZE ;
 int PARENB ;
 int PARODD ;
 scalar_t__ PHYS_DIRECT ;
 int TIOCOUTQ ;
 scalar_t__ ioctl (scalar_t__,int ,int*) ;
 scalar_t__ link_QueueLen (TYPE_7__*) ;
 int mode2Nam (scalar_t__) ;
 scalar_t__ physical_IsSync (struct physical*) ;
 int physical_Slot (struct physical*) ;
 int prompt_Printf (int ,char*,...) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct physical*) ;
 int stub2 (struct physical*) ;
 int throughput_disp (int *,int ) ;

int
physical_ShowStatus(struct cmdargs const *arg)
{
  struct physical *p = arg->cx->physical;
  struct cd *cd;
  const char *dev;
  int n, slot;

  prompt_Printf(arg->prompt, "Name: %s\n", p->link.name);
  prompt_Printf(arg->prompt, " State:           ");
  if (p->fd < 0)
    prompt_Printf(arg->prompt, "closed\n");
  else {
    slot = physical_Slot(p);
    if (p->handler && p->handler->openinfo) {
      if (slot == -1)
        prompt_Printf(arg->prompt, "open (%s)\n", (*p->handler->openinfo)(p));
      else
        prompt_Printf(arg->prompt, "open (%s, port %d)\n",
                      (*p->handler->openinfo)(p), slot);
    } else if (slot == -1)
      prompt_Printf(arg->prompt, "open\n");
    else
      prompt_Printf(arg->prompt, "open (port %d)\n", slot);
  }

  prompt_Printf(arg->prompt, " Device:          %s",
                *p->name.full ? p->name.full :
                p->type == PHYS_DIRECT ? "unknown" : "N/A");
  if (p->session_owner != (pid_t)-1)
    prompt_Printf(arg->prompt, " (session owner: %ld)", (long)p->session_owner);

  prompt_Printf(arg->prompt, "\n Link Type:       %s\n", mode2Nam(p->type));
  prompt_Printf(arg->prompt, " Connect Count:   %d\n", p->connect_count);





  prompt_Printf(arg->prompt, " Queued Packets:  %lu\n",
                (u_long)link_QueueLen(&p->link));
  prompt_Printf(arg->prompt, " Phone Number:    %s\n", arg->cx->phone.chosen);

  prompt_Printf(arg->prompt, "\nDefaults:\n");

  prompt_Printf(arg->prompt, " Device List:     ");
  dev = p->cfg.devlist;
  for (n = 0; n < p->cfg.ndev; n++) {
    if (n)
      prompt_Printf(arg->prompt, ", ");
    prompt_Printf(arg->prompt, "\"%s\"", dev);
    dev += strlen(dev) + 1;
  }

  prompt_Printf(arg->prompt, "\n Characteristics: ");
  if (physical_IsSync(arg->cx->physical))
    prompt_Printf(arg->prompt, "sync");
  else
    prompt_Printf(arg->prompt, "%dbps", p->cfg.speed);

  switch (p->cfg.parity & CSIZE) {
  case 129:
    prompt_Printf(arg->prompt, ", cs7");
    break;
  case 128:
    prompt_Printf(arg->prompt, ", cs8");
    break;
  }
  if (p->cfg.parity & PARENB) {
    if (p->cfg.parity & PARODD)
      prompt_Printf(arg->prompt, ", odd parity");
    else
      prompt_Printf(arg->prompt, ", even parity");
  } else
    prompt_Printf(arg->prompt, ", no parity");

  prompt_Printf(arg->prompt, ", CTS/RTS %s\n", (p->cfg.rts_cts ? "on" : "off"));

  prompt_Printf(arg->prompt, " CD check delay:  ");
  cd = p->handler ? &p->handler->cd : &p->cfg.cd;
  if (cd->necessity == CD_NOTREQUIRED)
    prompt_Printf(arg->prompt, "no cd");
  else if (p->cfg.cd.necessity == CD_DEFAULT) {
    prompt_Printf(arg->prompt, "device specific");
  } else {
    prompt_Printf(arg->prompt, "%d second%s", p->cfg.cd.delay,
                  p->cfg.cd.delay == 1 ? "" : "s");
    if (p->cfg.cd.necessity == CD_REQUIRED)
      prompt_Printf(arg->prompt, " (required!)");
  }
  prompt_Printf(arg->prompt, "\n\n");

  throughput_disp(&p->link.stats.total, arg->prompt);

  return 0;
}
