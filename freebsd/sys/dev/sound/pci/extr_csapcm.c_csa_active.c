
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csa_info {int active; TYPE_1__* card; } ;
struct TYPE_2__ {int (* active ) (int) ;} ;


 int stub1 (int) ;

__attribute__((used)) static int
csa_active(struct csa_info *csa, int run)
{
 int old;

 old = csa->active;
 csa->active += run;

 if ((csa->active > 1) || (csa->active < -1))
  csa->active = 0;
 if (csa->card->active)
  return (csa->card->active(!(csa->active && old)));

 return 0;
}
