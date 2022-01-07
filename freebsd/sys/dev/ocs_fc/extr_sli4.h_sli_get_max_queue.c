
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * max_qcount; } ;
struct TYPE_5__ {TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
typedef size_t sli4_qtype_e ;


 size_t SLI_QTYPE_MAX ;

__attribute__((used)) static inline uint32_t
sli_get_max_queue(sli4_t *sli4, sli4_qtype_e qtype)
{
 if (qtype >= SLI_QTYPE_MAX) {
  return 0;
 }
 return sli4->config.max_qcount[qtype];
}
