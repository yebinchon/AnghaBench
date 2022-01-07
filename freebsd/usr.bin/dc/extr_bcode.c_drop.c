
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 struct value* pop () ;
 int stack_free_value (struct value*) ;

__attribute__((used)) static void
drop(void)
{
 struct value *v = pop();
 if (v != ((void*)0))
  stack_free_value(v);
}
