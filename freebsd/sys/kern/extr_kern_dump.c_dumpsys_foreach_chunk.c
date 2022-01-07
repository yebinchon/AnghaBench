
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_pa {int dummy; } ;
typedef int (* dumpsys_callback_t ) (struct dump_pa*,int ,void*) ;


 struct dump_pa* dumpsys_pa_next (struct dump_pa*) ;
 int stub1 (struct dump_pa*,int ,void*) ;

int
dumpsys_foreach_chunk(dumpsys_callback_t cb, void *arg)
{
 struct dump_pa *mdp;
 int error, seqnr;

 seqnr = 0;
 mdp = dumpsys_pa_next(((void*)0));
 while (mdp != ((void*)0)) {
  error = (*cb)(mdp, seqnr++, arg);
  if (error)
   return (-error);
  mdp = dumpsys_pa_next(mdp);
 }
 return (seqnr);
}
