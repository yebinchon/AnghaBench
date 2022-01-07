
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent {int dummy; } ;
typedef scalar_t__ in_addr_t ;


 int AF_INET ;
 scalar_t__ INADDR_NONE ;
 int RV_NOTFOUND ;
 int RV_OK ;
 int assert (int) ;
 int endnetent () ;
 struct netent* getnetbyaddr (scalar_t__,int ) ;
 struct netent* getnetbyname (char*) ;
 struct netent* getnetent () ;
 scalar_t__ inet_network (char*) ;
 int networksprint (struct netent*) ;
 int setnetent (int) ;

__attribute__((used)) static int
networks(int argc, char *argv[])
{
 struct netent *ne;
 in_addr_t net;
 int i, rv;

 assert(argc > 1);
 assert(argv != ((void*)0));

 setnetent(1);
 rv = RV_OK;
 if (argc == 2) {
  while ((ne = getnetent()) != ((void*)0))
   networksprint(ne);
 } else {
  for (i = 2; i < argc; i++) {
   net = inet_network(argv[i]);
   if (net != INADDR_NONE)
    ne = getnetbyaddr(net, AF_INET);
   else
    ne = getnetbyname(argv[i]);
   if (ne != ((void*)0))
    networksprint(ne);
   else {
    rv = RV_NOTFOUND;
    break;
   }
  }
 }
 endnetent();
 return rv;
}
