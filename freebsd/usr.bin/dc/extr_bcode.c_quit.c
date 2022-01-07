
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int readsp; } ;


 TYPE_1__ bmachine ;
 int exit (int ) ;
 int src_free () ;

__attribute__((used)) static void
quit(void)
{

 if (bmachine.readsp < 2)
  exit(0);
 src_free();
 bmachine.readsp--;
 src_free();
 bmachine.readsp--;
}
