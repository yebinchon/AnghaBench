
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mevent {int me_cq; int me_closefd; int me_state; } ;


 int EV_DELETE ;
 int LIST_INSERT_HEAD (int *,struct mevent*,int ) ;
 int LIST_REMOVE (struct mevent*,int ) ;
 int change_head ;
 int me_list ;
 int mevent_notify () ;
 int mevent_qlock () ;
 int mevent_qunlock () ;

__attribute__((used)) static int
mevent_delete_event(struct mevent *evp, int closefd)
{
 mevent_qlock();





        if (evp->me_cq == 0) {
  evp->me_cq = 1;
  LIST_REMOVE(evp, me_list);
  LIST_INSERT_HEAD(&change_head, evp, me_list);
  mevent_notify();
        }
 evp->me_state = EV_DELETE;

 if (closefd)
  evp->me_closefd = 1;

 mevent_qunlock();

 return (0);
}
