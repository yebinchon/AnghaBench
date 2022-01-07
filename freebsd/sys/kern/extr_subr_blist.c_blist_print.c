
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_5__ {scalar_t__ bm_bitmap; } ;
struct TYPE_4__ {int bl_radix; TYPE_2__* bl_root; scalar_t__ bl_cursor; scalar_t__ bl_avail; } ;


 int blst_radix_print (TYPE_2__*,int ,int ,int) ;
 int printf (char*,...) ;

void
blist_print(blist_t bl)
{
 printf("BLIST avail = %jd, cursor = %08jx {\n",
     (uintmax_t)bl->bl_avail, (uintmax_t)bl->bl_cursor);

 if (bl->bl_root->bm_bitmap != 0)
  blst_radix_print(bl->bl_root, 0, bl->bl_radix, 4);
 printf("}\n");
}
