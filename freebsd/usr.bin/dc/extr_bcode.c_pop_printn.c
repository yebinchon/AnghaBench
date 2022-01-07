
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct TYPE_2__ {int obase; } ;


 TYPE_1__ bmachine ;
 int fflush (int ) ;
 struct value* pop () ;
 int print_value (int ,struct value*,char*,int ) ;
 int stack_free_value (struct value*) ;
 int stdout ;

__attribute__((used)) static void
pop_printn(void)
{
 struct value *value = pop();

 if (value != ((void*)0)) {
  print_value(stdout, value, "", bmachine.obase);
  fflush(stdout);
  stack_free_value(value);
 }
}
