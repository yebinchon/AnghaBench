
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int daddr_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_3__ {int bl_avail; } ;



daddr_t
blist_avail(blist_t bl)
{

 return (bl->bl_avail);
}
