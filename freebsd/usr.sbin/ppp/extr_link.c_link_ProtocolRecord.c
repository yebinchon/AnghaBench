
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct link {int * proto_out; int * proto_in; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int NPROTOSTAT ;
 int PROTO_IN ;
 TYPE_1__* ProtocolStat ;

void
link_ProtocolRecord(struct link *l, u_short proto, int type)
{
  int i;

  for (i = 0; i < NPROTOSTAT; i++)
    if (ProtocolStat[i].number == proto || ProtocolStat[i].number == 0) {
      if (type == PROTO_IN)
        l->proto_in[i]++;
      else
        l->proto_out[i]++;
      break;
    }
}
