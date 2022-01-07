
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGKILL ;
 scalar_t__* children ;
 int kill (scalar_t__,int ) ;
 int nfsdcnt ;

__attribute__((used)) static void
killchildren(void)
{
 int i;

 for (i = 0; i < nfsdcnt; i++) {
  if (children[i] > 0)
   kill(children[i], SIGKILL);
 }
}
