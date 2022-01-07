
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_SETMASK ;
 int oset ;
 scalar_t__ sigdepth ;
 int sigprocmask (int ,int *,int *) ;

void
relsesigs(void)
{

 if (--sigdepth == 0)
  (void)sigprocmask(SIG_SETMASK, &oset, ((void*)0));
}
