
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitems (int*) ;
 int* sigproptbl ;

__attribute__((used)) static __inline int
sigprop(int sig)
{

 if (sig > 0 && sig < nitems(sigproptbl))
  return (sigproptbl[sig]);
 return (0);
}
