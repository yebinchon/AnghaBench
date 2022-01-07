
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
struct sem_undo {int un_proc; scalar_t__ un_cnt; } ;


 struct sem_undo* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,struct sem_undo*,int ) ;
 int LIST_REMOVE (struct sem_undo*,int ) ;
 int MA_OWNED ;
 int SEMUNDO_LOCKASSERT (int ) ;
 int semu_free_list ;
 int semu_list ;
 int un_next ;

__attribute__((used)) static struct sem_undo *
semu_alloc(struct thread *td)
{
 struct sem_undo *suptr;

 SEMUNDO_LOCKASSERT(MA_OWNED);
 if ((suptr = LIST_FIRST(&semu_free_list)) == ((void*)0))
  return (((void*)0));
 LIST_REMOVE(suptr, un_next);
 LIST_INSERT_HEAD(&semu_list, suptr, un_next);
 suptr->un_cnt = 0;
 suptr->un_proc = td->td_proc;
 return (suptr);
}
