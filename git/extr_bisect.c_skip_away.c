
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int PRN_MODULO ;
 int current_bad_oid ;
 int get_prn (int) ;
 int oideq (int *,int ) ;
 int sqrti (int) ;

__attribute__((used)) static struct commit_list *skip_away(struct commit_list *list, int count)
{
 struct commit_list *cur, *previous;
 int prn, index, i;

 prn = get_prn(count);
 index = (count * prn / PRN_MODULO) * sqrti(prn) / sqrti(PRN_MODULO);

 cur = list;
 previous = ((void*)0);

 for (i = 0; cur; cur = cur->next, i++) {
  if (i == index) {
   if (!oideq(&cur->item->object.oid, current_bad_oid))
    return cur;
   if (previous)
    return previous;
   return list;
  }
  previous = cur;
 }

 return list;
}
