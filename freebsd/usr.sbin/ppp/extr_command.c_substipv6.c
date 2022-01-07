
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncpaddr {int dummy; } ;


 int ncpaddr_ntoa (struct ncpaddr const*) ;
 char* subst (char*,char const*,int ) ;

__attribute__((used)) static char *
substipv6(char *tgt, const char *oldstr, const struct ncpaddr *ip)
{
    return subst(tgt, oldstr, ncpaddr_ntoa(ip));
}
