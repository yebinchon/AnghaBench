
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IN6ADDRSZ ;
 int INADDRSZ ;
 int RV_NOTFOUND ;
 int RV_OK ;
 int assert (int) ;
 int endhostent () ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 struct hostent* gethostbyname (char*) ;
 struct hostent* gethostbyname2 (char*,int ) ;
 struct hostent* gethostent () ;
 int hostsprint (struct hostent*) ;
 scalar_t__ inet_pton (int ,char*,void*) ;
 int sethostent (int) ;

__attribute__((used)) static int
hosts(int argc, char *argv[])
{
 struct hostent *he4, *he6;
 char addr[IN6ADDRSZ];
 int i, rv;

 assert(argc > 1);
 assert(argv != ((void*)0));

 sethostent(1);
 he4 = he6 = ((void*)0);
 rv = RV_OK;
 if (argc == 2) {
  while ((he4 = gethostent()) != ((void*)0))
   hostsprint(he4);
 } else {
  for (i = 2; i < argc; i++) {
   if (inet_pton(AF_INET6, argv[i], (void *)addr) > 0) {
    he6 = gethostbyaddr(addr, IN6ADDRSZ, AF_INET6);
    if (he6 != ((void*)0))
     hostsprint(he6);
   } else if (inet_pton(AF_INET, argv[i],
       (void *)addr) > 0) {
    he4 = gethostbyaddr(addr, INADDRSZ, AF_INET);
    if (he4 != ((void*)0))
     hostsprint(he4);
          } else {
    he6 = gethostbyname2(argv[i], AF_INET6);
    if (he6 != ((void*)0))
     hostsprint(he6);
    he4 = gethostbyname(argv[i]);
    if (he4 != ((void*)0))
     hostsprint(he4);
   }
   if ( he4 == ((void*)0) && he6 == ((void*)0) ) {
    rv = RV_NOTFOUND;
    break;
   }
  }
 }
 endhostent();
 return rv;
}
