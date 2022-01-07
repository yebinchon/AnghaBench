
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
 int error (char*) ;
 TYPE_1__ initstat ;
 TYPE_1__ oldstat ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int ,int ) ;

void
resetip(void)
{
 size_t len;
 int name[4];

 name[0] = CTL_NET;
 name[1] = PF_INET;
 name[2] = IPPROTO_IP;
 name[3] = IPCTL_STATS;

 len = sizeof initstat.i;
 if (sysctl(name, 4, &initstat.i, &len, 0, 0) < 0) {
  error("sysctl getting ipstat failed");
 }
 name[2] = IPPROTO_UDP;
 name[3] = UDPCTL_STATS;

 len = sizeof initstat.u;
 if (sysctl(name, 4, &initstat.u, &len, 0, 0) < 0) {
  error("sysctl getting udpstat failed");
 }
 oldstat = initstat;
}
