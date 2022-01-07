
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int inet_ntoa (struct in_addr) ;
 char* subst (char*,char const*,int ) ;

__attribute__((used)) static char *
substip(char *tgt, const char *oldstr, struct in_addr ip)
{
  return subst(tgt, oldstr, inet_ntoa(ip));
}
