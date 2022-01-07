
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_3__ {int uz_size; } ;


 int bzero (void*,int ) ;

__attribute__((used)) static void
uma_zero_item(void *item, uma_zone_t zone)
{

 bzero(item, zone->uz_size);
}
