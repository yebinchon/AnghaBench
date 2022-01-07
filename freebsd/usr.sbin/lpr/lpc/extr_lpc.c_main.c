
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int c_opts; int (* c_handler ) (int,char**) ;int * c_generic; } ;
typedef char* PRIV_END ;


 int LOG_LPR ;
 int LPC_PRIVCMD ;
 int LPR_OPER ;
 int SIGINT ;
 int cmdscanner () ;
 int euid ;
 int exit (int) ;
 int fileno (int ) ;
 int fromatty ;
 int generic (int *,int,int (*) (int,char**),int,char**) ;
 struct cmd* getcmd (char*) ;
 int geteuid () ;
 scalar_t__ getuid () ;
 scalar_t__ ingroup (int ) ;
 int intr ;
 int isatty (int ) ;
 int openlog (char*,int ,int ) ;
 int printf (char*) ;
 int signal (int ,int ) ;
 int stdin ;
 int stub1 (int,char**) ;
 scalar_t__ uid ;

int
main(int argc, char *argv[])
{
 register struct cmd *c;

 euid = geteuid();
 uid = getuid();
 PRIV_END
 progname = argv[0];
 openlog("lpd", 0, LOG_LPR);

 if (--argc > 0) {
  c = getcmd(*++argv);
  if (c == (struct cmd *)-1) {
   printf("?Ambiguous command\n");
   exit(1);
  }
  if (c == ((void*)0)) {
   printf("?Invalid command\n");
   exit(1);
  }
  if ((c->c_opts & LPC_PRIVCMD) && getuid() &&
      ingroup(LPR_OPER) == 0) {
   printf("?Privileged command\n");
   exit(1);
  }
  if (c->c_generic != ((void*)0))
   generic(c->c_generic, c->c_opts, c->c_handler,
       argc, argv);
  else
   (*c->c_handler)(argc, argv);
  exit(0);
 }
 fromatty = isatty(fileno(stdin));
 if (!fromatty)
  signal(SIGINT, intr);
 for (;;) {
  cmdscanner();
 }
}
