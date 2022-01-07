
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int dummy; } ;
struct rm_priotracker {int dummy; } ;
struct lock_object {int dummy; } ;


 int rm_rlock (struct rmlock*,struct rm_priotracker*) ;
 int rm_wlock (struct rmlock*) ;

__attribute__((used)) static void
lock_rm(struct lock_object *lock, uintptr_t how)
{
 struct rmlock *rm;
 struct rm_priotracker *tracker;

 rm = (struct rmlock *)lock;
 if (how == 0)
  rm_wlock(rm);
 else {
  tracker = (struct rm_priotracker *)how;
  rm_rlock(rm, tracker);
 }
}
