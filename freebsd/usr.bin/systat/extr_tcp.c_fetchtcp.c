
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_NET ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int TCPCTL_STATS ;
 int curstat ;
 int oldstat ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int ,int ) ;

void
fetchtcp(void)
{
 int name[4];
 size_t len;

 oldstat = curstat;
 name[0] = CTL_NET;
 name[1] = PF_INET;
 name[2] = IPPROTO_TCP;
 name[3] = TCPCTL_STATS;
 len = sizeof curstat;

 if (sysctl(name, 4, &curstat, &len, 0, 0) < 0)
  return;
}
