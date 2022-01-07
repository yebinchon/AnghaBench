
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {TYPE_1__* extent; } ;
struct TYPE_7__ {TYPE_2__ config; } ;
typedef TYPE_3__ sli4_t ;
typedef int sli4_resource_e ;
typedef int int32_t ;
struct TYPE_5__ {size_t* base; size_t size; size_t number; int use_map; } ;






 int ocs_bitmap_clear (int ,size_t) ;

int32_t
sli_resource_free(sli4_t *sli4, sli4_resource_e rtype, uint32_t rid)
{
 int32_t rc = -1;
 uint32_t x;
 uint32_t size, *base;

 switch (rtype) {
 case 130:
 case 129:
 case 131:
 case 128:





  base = sli4->config.extent[rtype].base;
  size = sli4->config.extent[rtype].size;





  if (base != ((void*)0)) {
   for (x = 0; x < sli4->config.extent[rtype].number; x++) {
    if ((rid >= base[x]) && (rid < (base[x] + size))) {
     rid -= base[x];
     ocs_bitmap_clear(sli4->config.extent[rtype].use_map,
        (x * size) + rid);
     rc = 0;
     break;
    }
   }
  }
  break;
 default:
  ;
 }

 return rc;
}
