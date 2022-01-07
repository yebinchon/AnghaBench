
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;



void
softdep_get_depcounts(struct mount *mp,
        int *softdepactivep,
        int *softdepactiveaccp)
{
 (void) mp;
 *softdepactivep = 0;
 *softdepactiveaccp = 0;
}
