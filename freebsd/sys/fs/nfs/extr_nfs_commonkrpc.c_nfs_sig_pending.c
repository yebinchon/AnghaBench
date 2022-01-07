
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 scalar_t__ SIGISMEMBER (int ,int ) ;
 int * newnfs_sig_set ;
 int nitems (int *) ;

__attribute__((used)) static int
nfs_sig_pending(sigset_t set)
{
 int i;

 for (i = 0 ; i < nitems(newnfs_sig_set); i++)
  if (SIGISMEMBER(set, newnfs_sig_set[i]))
   return (1);
 return (0);
}
