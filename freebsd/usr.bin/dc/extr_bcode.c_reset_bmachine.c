
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source {int dummy; } ;
struct TYPE_2__ {struct source* readstack; scalar_t__ readsp; } ;


 TYPE_1__ bmachine ;

void
reset_bmachine(struct source *src)
{

 bmachine.readsp = 0;
 bmachine.readstack[0] = *src;
}
