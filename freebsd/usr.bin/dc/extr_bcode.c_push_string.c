
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stack; } ;


 TYPE_1__ bmachine ;
 int stack_pushstring (int *,char*) ;

__attribute__((used)) static __inline void
push_string(char *string)
{

 stack_pushstring(&bmachine.stack, string);
}
