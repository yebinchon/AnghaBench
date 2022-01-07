
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t readsp; TYPE_1__* readstack; } ;
struct TYPE_3__ {int lastchar; } ;


 TYPE_2__ bmachine ;
 int warnx (char*,int,int) ;

__attribute__((used)) static void
unknown(void)
{
 int ch = bmachine.readstack[bmachine.readsp].lastchar;
 warnx("%c (0%o) is unimplemented", ch, ch);
}
