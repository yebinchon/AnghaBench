
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct number {int dummy; } ;
struct TYPE_2__ {int stack; } ;


 TYPE_1__ bmachine ;
 struct number* stack_popnumber (int *) ;

__attribute__((used)) static __inline struct number *
pop_number(void)
{

 return (stack_popnumber(&bmachine.stack));
}
