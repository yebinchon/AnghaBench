
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sfra; } ;


 int fp ;
 TYPE_1__* mstack ;

__attribute__((used)) static int
frame_level(void)
{
 int level;
 int framep;

 for (framep = fp, level = 0; framep != 0;
  level++,framep = mstack[framep-3].sfra)
  ;
 return level;
}
