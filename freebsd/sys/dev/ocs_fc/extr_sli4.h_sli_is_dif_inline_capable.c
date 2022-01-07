
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ t10_dif_inline_capable; } ;
struct TYPE_6__ {TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;


 scalar_t__ sli_get_dif_capable (TYPE_2__*) ;

__attribute__((used)) static inline uint32_t
sli_is_dif_inline_capable(sli4_t *sli4)
{
 return sli_get_dif_capable(sli4) && sli4->config.t10_dif_inline_capable;
}
