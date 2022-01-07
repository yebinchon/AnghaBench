
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_NET ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int TCPCTL_STATS ;
 int error (char*) ;
 int initstat ;
 int oldstat ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int ,int ) ;

void
resettcp(void)
{
 size_t len;
 int name[4];

 name[0] = CTL_NET;
 name[1] = PF_INET;
 name[2] = IPPROTO_TCP;
 name[3] = TCPCTL_STATS;

 len = sizeof initstat;
 if (sysctl(name, 4, &initstat, &len, 0, 0) < 0) {
  error("sysctl getting tcpstat failed");
 }
 oldstat = initstat;
}
