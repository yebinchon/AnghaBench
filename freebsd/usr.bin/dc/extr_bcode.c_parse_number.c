
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t readsp; int scale; int ibase; int * readstack; } ;


 TYPE_1__ bmachine ;
 int push_number (int ) ;
 int readnumber (int *,int ,int ) ;
 int unreadch () ;

__attribute__((used)) static void
parse_number(void)
{

 unreadch();
 push_number(readnumber(&bmachine.readstack[bmachine.readsp],
     bmachine.ibase, bmachine.scale));
}
