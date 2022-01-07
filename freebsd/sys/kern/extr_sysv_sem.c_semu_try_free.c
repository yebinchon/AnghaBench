
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sem_undo {scalar_t__ un_cnt; } ;


 int LIST_INSERT_HEAD (int *,struct sem_undo*,int ) ;
 int LIST_REMOVE (struct sem_undo*,int ) ;
 int MA_OWNED ;
 int SEMUNDO_LOCKASSERT (int ) ;
 int semu_free_list ;
 int un_next ;

__attribute__((used)) static int
semu_try_free(struct sem_undo *suptr)
{

 SEMUNDO_LOCKASSERT(MA_OWNED);

 if (suptr->un_cnt != 0)
  return (0);
 LIST_REMOVE(suptr, un_next);
 LIST_INSERT_HEAD(&semu_free_list, suptr, un_next);
 return (1);
}
