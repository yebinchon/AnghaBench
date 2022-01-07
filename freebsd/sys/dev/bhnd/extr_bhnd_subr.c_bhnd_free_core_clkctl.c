
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_clkctl {int dummy; } ;


 int BHND_CLKCTL_LOCK_DESTROY (struct bhnd_core_clkctl*) ;
 int M_BHND ;
 int free (struct bhnd_core_clkctl*,int ) ;

void
bhnd_free_core_clkctl(struct bhnd_core_clkctl *clkctl)
{
 BHND_CLKCTL_LOCK_DESTROY(clkctl);

 free(clkctl, M_BHND);
}
