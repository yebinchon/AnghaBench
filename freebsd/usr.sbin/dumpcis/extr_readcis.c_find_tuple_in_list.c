
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuple_list {struct tuple* tuples; } ;
struct tuple {unsigned char code; struct tuple* next; } ;



__attribute__((used)) static struct tuple *
find_tuple_in_list(struct tuple_list *tl, unsigned char code)
{
 struct tuple *tp;

 for (tp = tl->tuples; tp; tp = tp->next)
  if (tp->code == code)
   break;
 return (tp);
}
