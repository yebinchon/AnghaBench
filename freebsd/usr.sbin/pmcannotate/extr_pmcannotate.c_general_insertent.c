
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct entry*,int ) ;
 int en_iter ;
 int mainlst ;

__attribute__((used)) static void
general_insertent(struct entry *entry)
{

 TAILQ_INSERT_TAIL(&mainlst, entry, en_iter);
}
