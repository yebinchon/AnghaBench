
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int sli_family; } ;
typedef TYPE_1__ sli4_t ;



__attribute__((used)) static inline uint32_t
sli_get_sli_family(sli4_t *sli4)
{
 return sli4->sli_family;
}
