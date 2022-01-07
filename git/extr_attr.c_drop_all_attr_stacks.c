
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__** checks; } ;
struct TYPE_3__ {int stack; } ;


 TYPE_2__ check_vector ;
 int drop_attr_stack (int *) ;
 int vector_lock () ;
 int vector_unlock () ;

__attribute__((used)) static void drop_all_attr_stacks(void)
{
 int i;

 vector_lock();

 for (i = 0; i < check_vector.nr; i++) {
  drop_attr_stack(&check_vector.checks[i]->stack);
 }

 vector_unlock();
}
