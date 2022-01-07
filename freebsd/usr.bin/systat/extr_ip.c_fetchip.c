
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u; int i; } ;


 int CTL_NET ;
 int IPCTL_STATS ;
 int IPPROTO_IP ;
 int IPPROTO_UDP ;
 int PF_INET ;
 int UDPCTL_STATS ;
 TYPE_1__ curstat ;
 TYPE_1__ oldstat ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int ,int ) ;

void
fetchip(void)
{
 int name[4];
 size_t len;

 oldstat = curstat;
 name[0] = CTL_NET;
 name[1] = PF_INET;
 name[2] = IPPROTO_IP;
 name[3] = IPCTL_STATS;
 len = sizeof curstat.i;

 if (sysctl(name, 4, &curstat.i, &len, 0, 0) < 0)
  return;
 name[2] = IPPROTO_UDP;
 name[3] = UDPCTL_STATS;
 len = sizeof curstat.u;

 if (sysctl(name, 4, &curstat.u, &len, 0, 0) < 0)
  return;
}
