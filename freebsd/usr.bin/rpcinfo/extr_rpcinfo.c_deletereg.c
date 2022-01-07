
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netconfig {int dummy; } ;


 int errx (int,char*,char*,...) ;
 struct netconfig* getnetconfigent (char*) ;
 int getprognum (char*) ;
 int getvers (char*) ;
 scalar_t__ rpcb_unset (int ,int ,struct netconfig*) ;
 int usage () ;

__attribute__((used)) static void
deletereg(char *netid, int argc, char **argv)
{
 struct netconfig *nconf = ((void*)0);

 if (argc != 2)
  usage();
 if (netid) {
  nconf = getnetconfigent(netid);
  if (nconf == ((void*)0))
   errx(1, "netid %s not supported", netid);
 }
 if ((rpcb_unset(getprognum(argv[0]), getvers(argv[1]), nconf)) == 0)
  errx(1,
 "could not delete registration for prog %s version %s",
   argv[0], argv[1]);
}
