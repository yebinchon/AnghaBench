
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
typedef size_t sli4_resource_e ;
struct TYPE_5__ {int size; } ;


 size_t SLI_RSRC_MAX ;

__attribute__((used)) static inline uint32_t
sli_get_max_rsrc(sli4_t *sli4, sli4_resource_e rsrc)
{
 if (rsrc >= SLI_RSRC_MAX) {
  return 0;
 }

 return sli4->config.extent[rsrc].size;
}
