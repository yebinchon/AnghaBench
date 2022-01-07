
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness_blessed {int b_lock1; int b_lock2; } ;
struct witness {int w_name; } ;


 struct witness_blessed* blessed_list ;
 int nitems (struct witness_blessed*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
blessed(struct witness *w1, struct witness *w2)
{
 int i;
 struct witness_blessed *b;

 for (i = 0; i < nitems(blessed_list); i++) {
  b = &blessed_list[i];
  if (strcmp(w1->w_name, b->b_lock1) == 0) {
   if (strcmp(w2->w_name, b->b_lock2) == 0)
    return (1);
   continue;
  }
  if (strcmp(w1->w_name, b->b_lock2) == 0)
   if (strcmp(w2->w_name, b->b_lock1) == 0)
    return (1);
 }
 return (0);
}
