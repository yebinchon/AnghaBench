
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int FILE ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 int fprintf (int *,char*,char const*) ;
 int fputs (char*,int *) ;
 char* inet_ntop (int ,struct in6_addr*,char*,int) ;

__attribute__((used)) static void
print_sctp_ipv6_addr(FILE *fp, struct in6_addr *addr)
{
 char buf[INET6_ADDRSTRLEN];
 const char *s;

 s = inet_ntop(AF_INET6, addr, buf, INET6_ADDRSTRLEN);
 if (s != ((void*)0))
  fprintf(fp, "{addr=%s}", s);
 else
  fputs("{addr=???}", fp);
}
