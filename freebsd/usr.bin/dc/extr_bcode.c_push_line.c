
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t readsp; int * readstack; } ;


 TYPE_1__ bmachine ;
 int push_string (int ) ;
 int read_string (int *) ;

__attribute__((used)) static void
push_line(void)
{

 push_string(read_string(&bmachine.readstack[bmachine.readsp]));
}
