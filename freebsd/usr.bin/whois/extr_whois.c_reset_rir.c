
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loop; int * host; } ;


 TYPE_1__* try_rir ;

__attribute__((used)) static void
reset_rir(void) {
 int i;

 for (i = 0; try_rir[i].host != ((void*)0); i++)
  try_rir[i].loop = 0;
}
