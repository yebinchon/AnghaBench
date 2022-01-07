
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int dummy; } ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 struct entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct entry*,int ) ;
 int en_iter ;
 int mainlst ;

__attribute__((used)) static void
general_deleteall(void)
{
 struct entry *obj;

 while (TAILQ_EMPTY(&mainlst) == 0) {
  obj = TAILQ_FIRST(&mainlst);
  TAILQ_REMOVE(&mainlst, obj, en_iter);
 }
}
