
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef int addrs ;


 int bcopy (struct sockaddr_in*,struct sockaddr_storage*,int) ;
 int sysctlbyname (char*,int *,int ,struct sockaddr_storage*,int) ;

__attribute__((used)) static int
tcp_drop(struct sockaddr_in *sin_local, struct sockaddr_in *sin_remote)
{
 struct sockaddr_storage addrs[2];






 bcopy(sin_remote, &addrs[0], sizeof(*sin_remote));
 bcopy(sin_local, &addrs[1], sizeof(*sin_local));

 return (sysctlbyname("net.inet.tcp.drop", ((void*)0), 0, addrs,
     sizeof(addrs)));
}
