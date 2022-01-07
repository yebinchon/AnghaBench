
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NETGROUPPRINT (char*) ;
 int RV_NOENUM ;
 int RV_OK ;
 int assert (int) ;
 int endnetgrent () ;
 int fprintf (int ,char*) ;
 int fputs (char*,int ) ;
 scalar_t__ getnetgrent (char**,char**,char**) ;
 int printf (char*,char*,char*,char*) ;
 int putchar (char) ;
 int setnetgrent (char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int
netgroup(int argc, char *argv[])
{
 char *host, *user, *domain;
 int first;
 int rv, i;

 assert(argc > 1);
 assert(argv != ((void*)0));



 rv = RV_OK;
 if (argc == 2) {
  fprintf(stderr, "Enumeration not supported on netgroup\n");
  rv = RV_NOENUM;
 } else {
  for (i = 2; i < argc; i++) {
   setnetgrent(argv[i]);
   first = 1;
   while (getnetgrent(&host, &user, &domain) != 0) {
    if (first) {
     first = 0;
     (void)fputs(argv[i], stdout);
    }
    (void)printf(" (%s,%s,%s)",
        (((host) != ((void*)0)) ? (host) : ""),
        (((user) != ((void*)0)) ? (user) : ""),
        (((domain) != ((void*)0)) ? (domain) : ""));
   }
   if (!first)
    (void)putchar('\n');
   endnetgrent();
  }
 }
 return rv;
}
