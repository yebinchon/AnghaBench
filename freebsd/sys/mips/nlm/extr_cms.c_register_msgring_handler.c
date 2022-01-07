
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * msgring_handler ;
struct TYPE_2__ {void* arg; int * action; } ;


 int KASSERT (int,char*) ;
 int MSGRNG_NSTATIONS ;
 scalar_t__ bootverbose ;
 TYPE_1__* msgmap ;
 int msgmap_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*,int,int,int *,void*) ;

int
register_msgring_handler(int startb, int endb, msgring_handler action,
    void *arg)
{
 int i;

 if (bootverbose)
  printf("Register handler %d-%d %p(%p)\n",
      startb, endb, action, arg);
 KASSERT(startb >= 0 && startb <= endb && endb < MSGRNG_NSTATIONS,
     ("Invalid value for bucket range %d,%d", startb, endb));

 mtx_lock_spin(&msgmap_lock);
 for (i = startb; i <= endb; i++) {
  KASSERT(msgmap[i].action == ((void*)0),
     ("Bucket %d already used [action %p]", i, msgmap[i].action));
  msgmap[i].action = action;
  msgmap[i].arg = arg;
 }
 mtx_unlock_spin(&msgmap_lock);
 return (0);
}
