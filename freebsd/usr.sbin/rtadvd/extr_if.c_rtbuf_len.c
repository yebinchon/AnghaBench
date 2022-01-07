
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 int AF_ROUTE ;
 int CTL_NET ;
 int NET_RT_DUMP ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int *,int ) ;

int
rtbuf_len(void)
{
 size_t len;
 int mib[6] = {CTL_NET, AF_ROUTE, 0, AF_INET6, NET_RT_DUMP, 0};

 if (sysctl(mib, 6, ((void*)0), &len, ((void*)0), 0) < 0)
  return (-1);

 return (len);
}
