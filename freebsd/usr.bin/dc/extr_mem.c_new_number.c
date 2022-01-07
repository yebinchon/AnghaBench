
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {int * number; scalar_t__ scale; } ;


 int * BN_new () ;
 struct number* bmalloc (int) ;
 int err (int,int *) ;

struct number *
new_number(void)
{
 struct number *n;

 n = bmalloc(sizeof(*n));
 n->scale = 0;
 n->number = BN_new();
 if (n->number == ((void*)0))
  err(1, ((void*)0));
 return (n);
}
