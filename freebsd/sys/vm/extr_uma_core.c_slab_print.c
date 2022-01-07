
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uma_slab_t ;
struct TYPE_3__ {int us_freecount; int us_data; int us_keg; } ;


 int printf (char*,int ,int ,int) ;

__attribute__((used)) static void
slab_print(uma_slab_t slab)
{
 printf("slab: keg %p, data %p, freecount %d\n",
  slab->us_keg, slab->us_data, slab->us_freecount);
}
