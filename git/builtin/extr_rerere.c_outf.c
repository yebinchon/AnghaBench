
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int ptr; } ;
typedef TYPE_1__ mmbuffer_t ;


 scalar_t__ write_in_full (int,int ,int ) ;

__attribute__((used)) static int outf(void *dummy, mmbuffer_t *ptr, int nbuf)
{
 int i;
 for (i = 0; i < nbuf; i++)
  if (write_in_full(1, ptr[i].ptr, ptr[i].size) < 0)
   return -1;
 return 0;
}
