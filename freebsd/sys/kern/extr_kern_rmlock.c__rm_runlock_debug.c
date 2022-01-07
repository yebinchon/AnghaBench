
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int dummy; } ;
struct rm_priotracker {int dummy; } ;


 int _rm_runlock (struct rmlock*,struct rm_priotracker*) ;

void
_rm_runlock_debug(struct rmlock *rm, struct rm_priotracker *tracker,
    const char *file, int line)
{

 _rm_runlock(rm, tracker);
}
