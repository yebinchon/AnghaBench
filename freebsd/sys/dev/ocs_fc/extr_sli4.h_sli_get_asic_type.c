
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int asic_type; } ;
typedef TYPE_1__ sli4_t ;
typedef int sli4_asic_type_e ;



__attribute__((used)) static inline sli4_asic_type_e
sli_get_asic_type(sli4_t *sli4)
{
 return sli4->asic_type;
}
