
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {TYPE_1__* cr_prison; } ;
struct TYPE_2__ {int pr_securelevel; } ;


 int EPERM ;

int
securelevel_ge(struct ucred *cr, int level)
{

 return (cr->cr_prison->pr_securelevel >= level ? EPERM : 0);
}
