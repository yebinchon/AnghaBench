
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_name; int h_aliases; int h_addr; int h_addrtype; } ;
typedef int buf ;


 int INET6_ADDRSTRLEN ;
 int assert (int ) ;
 int * inet_ntop (int ,int ,char*,int) ;
 int printfmtstrings (int ,char*,char*,char*,char*,int ) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
hostsprint(const struct hostent *he)
{
 char buf[INET6_ADDRSTRLEN];

 assert(he != ((void*)0));
 if (inet_ntop(he->h_addrtype, he->h_addr, buf, sizeof(buf)) == ((void*)0))
  strlcpy(buf, "# unknown", sizeof(buf));
 printfmtstrings(he->h_aliases, "  ", " ", "%-16s  %s", buf, he->h_name);
}
