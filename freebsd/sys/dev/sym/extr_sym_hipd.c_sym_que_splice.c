
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* blink; struct sym_quehead* flink; } ;



__attribute__((used)) static __inline void sym_que_splice(struct sym_quehead *list,
 struct sym_quehead *head)
{
 struct sym_quehead *first = list->flink;

 if (first != list) {
  struct sym_quehead *last = list->blink;
  struct sym_quehead *at = head->flink;

  first->blink = head;
  head->flink = first;

  last->flink = at;
  at->blink = last;
 }
}
