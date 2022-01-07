
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _dom_binding {char* dom_domain; int dom_vers; scalar_t__ dom_broadcast_pid; int dom_lockfd; struct _dom_binding* dom_pnext; } ;


 char* BINDINGDIR ;
 int MAXPATHLEN ;
 int SIGINT ;
 char* YPBINDLOCK ;
 int YPBINDPROG ;
 int YPBINDVERS ;
 int close (int ) ;
 int exit (int ) ;
 scalar_t__ getpid () ;
 int kill (scalar_t__,int ) ;
 int pmap_unset (int ,int ) ;
 scalar_t__ ppid ;
 int sprintf (char*,char*,char*,char*,int ) ;
 int unlink (char*) ;
 struct _dom_binding* ypbindlist ;
 int yplockfd ;

void
terminate(int sig)
{
 struct _dom_binding *ypdb;
 char path[MAXPATHLEN];

 if (ppid != getpid())
  exit(0);

 for (ypdb = ypbindlist; ypdb; ypdb = ypdb->dom_pnext) {
  close(ypdb->dom_lockfd);
  if (ypdb->dom_broadcast_pid)
   kill(ypdb->dom_broadcast_pid, SIGINT);
  sprintf(path, "%s/%s.%ld", BINDINGDIR,
   ypdb->dom_domain, ypdb->dom_vers);
  unlink(path);
 }
 close(yplockfd);
 unlink(YPBINDLOCK);
 pmap_unset(YPBINDPROG, YPBINDVERS);
 exit(0);
}
