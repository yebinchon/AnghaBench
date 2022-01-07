
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_pa {scalar_t__ pa_size; } ;


 struct dump_pa* dump_map ;

struct dump_pa *
dumpsys_gen_pa_next(struct dump_pa *mdp)
{

 if (mdp == ((void*)0))
  return (&dump_map[0]);

 mdp++;
 if (mdp->pa_size == 0)
  mdp = ((void*)0);
 return (mdp);
}
