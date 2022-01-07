
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int stack; } ;


 TYPE_1__ bmachine ;
 int stack_push (int *,struct value*) ;

__attribute__((used)) static __inline void
push(struct value *v)
{

 stack_push(&bmachine.stack, v);
}
