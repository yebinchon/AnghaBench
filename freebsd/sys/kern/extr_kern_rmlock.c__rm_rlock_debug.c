
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int dummy; } ;
struct rm_priotracker {int dummy; } ;


 int _rm_rlock (struct rmlock*,struct rm_priotracker*,int) ;

int
_rm_rlock_debug(struct rmlock *rm, struct rm_priotracker *tracker,
    int trylock, const char *file, int line)
{

 return _rm_rlock(rm, tracker, trylock);
}
