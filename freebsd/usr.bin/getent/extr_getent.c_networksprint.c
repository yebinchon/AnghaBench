
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent {int n_name; int n_aliases; int n_addrtype; int n_net; } ;
struct in_addr {int dummy; } ;
typedef int buf ;


 int INET6_ADDRSTRLEN ;
 int assert (int ) ;
 struct in_addr inet_makeaddr (int ,int ) ;
 int * inet_ntop (int ,struct in_addr*,char*,int) ;
 int printfmtstrings (int ,char*,char*,char*,int ,char*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
networksprint(const struct netent *ne)
{
 char buf[INET6_ADDRSTRLEN];
 struct in_addr ianet;

 assert(ne != ((void*)0));
 ianet = inet_makeaddr(ne->n_net, 0);
 if (inet_ntop(ne->n_addrtype, &ianet, buf, sizeof(buf)) == ((void*)0))
  strlcpy(buf, "# unknown", sizeof(buf));
 printfmtstrings(ne->n_aliases, "  ", " ", "%-16s  %s", ne->n_name, buf);
}
