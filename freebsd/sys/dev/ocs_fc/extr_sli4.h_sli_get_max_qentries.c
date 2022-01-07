
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * max_qentries; } ;
struct TYPE_5__ {TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;
typedef size_t sli4_qtype_e ;



__attribute__((used)) static inline uint32_t
sli_get_max_qentries(sli4_t *sli4, sli4_qtype_e qtype)
{

 return sli4->config.max_qentries[qtype];
}
