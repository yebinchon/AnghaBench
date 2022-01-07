
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int se_fd; struct servtab* se_next; } ;


 int EX_OSERR ;
 int LOG_ERR ;
 int SIGBLOCK ;
 int exit (int ) ;
 scalar_t__ malloc (int) ;
 struct servtab* servtab ;
 long sigblock (int ) ;
 int sigsetmask (long) ;
 int syslog (int ,char*) ;

__attribute__((used)) static struct servtab *
enter(struct servtab *cp)
{
 struct servtab *sep;
 long omask;

 sep = (struct servtab *)malloc(sizeof (*sep));
 if (sep == (struct servtab *)0) {
  syslog(LOG_ERR, "malloc: %m");
  exit(EX_OSERR);
 }
 *sep = *cp;
 sep->se_fd = -1;
 omask = sigblock(SIGBLOCK);
 sep->se_next = servtab;
 servtab = sep;
 sigsetmask(omask);
 return (sep);
}
