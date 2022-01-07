
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_BLOCK ;
 int nset ;
 int oset ;
 int sigaddset (int *,int ) ;
 int sigdepth ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void
holdsigs(void)
{

 if (sigdepth++ == 0) {
  (void)sigemptyset(&nset);
  (void)sigaddset(&nset, SIGHUP);
  (void)sigaddset(&nset, SIGINT);
  (void)sigaddset(&nset, SIGQUIT);
  (void)sigprocmask(SIG_BLOCK, &nset, &oset);
 }
}
