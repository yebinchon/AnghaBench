
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* extent; } ;
struct TYPE_7__ {TYPE_2__ config; } ;
typedef TYPE_3__ sli4_t ;
typedef int sli4_resource_e ;
typedef int int32_t ;
struct TYPE_5__ {int use_map; int map_size; } ;






 int ocs_bitmap_clear (int ,int ) ;

int32_t
sli_resource_reset(sli4_t *sli4, sli4_resource_e rtype)
{
 int32_t rc = -1;
 uint32_t i;

 switch (rtype) {
 case 130:
 case 129:
 case 131:
 case 128:
  for (i = 0; i < sli4->config.extent[rtype].map_size; i++) {
   ocs_bitmap_clear(sli4->config.extent[rtype].use_map, i);
  }
  rc = 0;
  break;
 default:
  ;
 }

 return rc;
}
