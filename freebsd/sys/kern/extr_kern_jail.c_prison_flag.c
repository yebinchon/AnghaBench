
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {TYPE_1__* cr_prison; } ;
struct TYPE_2__ {unsigned int pr_flags; } ;



int
prison_flag(struct ucred *cred, unsigned flag)
{


 return (cred->cr_prison->pr_flags & flag);
}
