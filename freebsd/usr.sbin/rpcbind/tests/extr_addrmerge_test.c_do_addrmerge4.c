
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct netbuf {int maxlen; int len; void* buf; } ;
typedef int caller_in ;


 int AF_INET ;
 char* addrmerge (struct netbuf*,char const*,char const*,char const*) ;
 int inet_addr (char*) ;

__attribute__((used)) static char*
do_addrmerge4(const char* recvdstaddr)
{
 struct netbuf caller;
 struct sockaddr_in caller_in;
 const char *serv_uaddr, *clnt_uaddr, *netid;


 caller.maxlen = sizeof(struct sockaddr_storage);
 caller.len = sizeof(caller_in);
 caller_in.sin_family = AF_INET;
 caller_in.sin_len = sizeof(caller_in);
 caller_in.sin_port = 1234;
 caller_in.sin_addr.s_addr = inet_addr("192.0.2.1");
 caller.buf = (void*)&caller_in;
 if (recvdstaddr != ((void*)0))
  clnt_uaddr = recvdstaddr;
 else
  clnt_uaddr = "192.0.2.1.3.46";


 serv_uaddr = "0.0.0.0.3.46";

 netid = "udp";
 return (addrmerge(&caller, serv_uaddr, clnt_uaddr, netid));
}
