
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int stack; } ;


 TYPE_1__ bmachine ;
 struct value* stack_pop (int *) ;

__attribute__((used)) static __inline struct value *
pop(void)
{

 return (stack_pop(&bmachine.stack));
}
