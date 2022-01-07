
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {struct name* n_blink; struct name* n_flink; } ;


 struct name* tailof (struct name*) ;

struct name *
cat(struct name *n1, struct name *n2)
{
 struct name *tail;

 if (n1 == ((void*)0))
  return (n2);
 if (n2 == ((void*)0))
  return (n1);
 tail = tailof(n1);
 tail->n_flink = n2;
 n2->n_blink = tail;
 return (n1);
}
