
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * par; } ;
struct dn_fsk {TYPE_1__ fs; } ;


 scalar_t__ MAXPRIO ;
 int ipdn_bound_var (int *,int ,int ,scalar_t__,char*) ;

__attribute__((used)) static int
prio_new_fsk(struct dn_fsk *fs)
{

 ipdn_bound_var(&fs->fs.par[0], 0, 0, MAXPRIO - 1, "PRIO priority");
 return 0;
}
