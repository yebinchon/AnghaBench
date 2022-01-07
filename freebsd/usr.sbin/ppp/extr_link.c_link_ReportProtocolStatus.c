
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prompt {int dummy; } ;
struct link {int * proto_out; int * proto_in; } ;
struct TYPE_2__ {int name; } ;


 int NPROTOSTAT ;
 TYPE_1__* ProtocolStat ;
 int prompt_Printf (struct prompt*,char*,...) ;

void
link_ReportProtocolStatus(struct link *l, struct prompt *prompt)
{
  int i;

  prompt_Printf(prompt, "    Protocol     in        out      "
                "Protocol      in       out\n");
  for (i = 0; i < NPROTOSTAT; i++) {
    prompt_Printf(prompt, "   %-9s: %8lu, %8lu",
     ProtocolStat[i].name, l->proto_in[i], l->proto_out[i]);
    if ((i % 2) == 0)
      prompt_Printf(prompt, "\n");
  }
  if (!(i % 2))
    prompt_Printf(prompt, "\n");
}
