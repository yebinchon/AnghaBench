
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_NET ;
 int ICMPCTL_STATS ;
 int IPPROTO_ICMP ;
 int PF_INET ;
 int icmpstat ;
 int oldstat ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int ,int ) ;

void
fetchicmp(void)
{
 int name[4];
 size_t len;

 oldstat = icmpstat;
 name[0] = CTL_NET;
 name[1] = PF_INET;
 name[2] = IPPROTO_ICMP;
 name[3] = ICMPCTL_STATS;
 len = sizeof icmpstat;

 if (sysctl(name, 4, &icmpstat, &len, 0, 0) < 0)
  return;
}
