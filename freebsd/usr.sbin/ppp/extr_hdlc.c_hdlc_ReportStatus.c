
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unknownproto; int badcommand; int badaddr; int badfcs; } ;
struct hdlc {TYPE_1__ stats; } ;
struct cmdargs {int prompt; TYPE_3__* cx; } ;
struct TYPE_6__ {int name; TYPE_2__* physical; } ;
struct TYPE_5__ {struct hdlc hdlc; } ;


 int HDLC_ADDR ;
 int HDLC_UI ;
 int prompt_Printf (int ,char*,int ,...) ;

int
hdlc_ReportStatus(struct cmdargs const *arg)
{
  struct hdlc *hdlc = &arg->cx->physical->hdlc;

  prompt_Printf(arg->prompt, "%s HDLC level errors:\n", arg->cx->name);
  prompt_Printf(arg->prompt, " Bad Frame Check Sequence fields: %u\n",
         hdlc->stats.badfcs);
  prompt_Printf(arg->prompt, " Bad address (!= 0x%02x) fields:    %u\n",
         HDLC_ADDR, hdlc->stats.badaddr);
  prompt_Printf(arg->prompt, " Bad command (!= 0x%02x) fields:    %u\n",
         HDLC_UI, hdlc->stats.badcommand);
  prompt_Printf(arg->prompt, " Unrecognised protocol fields:    %u\n",
         hdlc->stats.unknownproto);
  return 0;
}
