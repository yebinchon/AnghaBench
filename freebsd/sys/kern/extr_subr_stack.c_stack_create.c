
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;


 int M_STACK ;
 int M_ZERO ;
 struct stack* malloc (int,int ,int) ;

struct stack *
stack_create(int flags)
{
 struct stack *st;

 st = malloc(sizeof(*st), M_STACK, flags | M_ZERO);
 return (st);
}
