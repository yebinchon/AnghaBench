
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int dif; } ;
struct TYPE_7__ {TYPE_1__ flag; } ;
struct TYPE_8__ {TYPE_2__ features; } ;
struct TYPE_9__ {TYPE_3__ config; } ;
typedef TYPE_4__ sli4_t ;



__attribute__((used)) static inline uint32_t
sli_get_dif_capable(sli4_t *sli4)
{
 return sli4->config.features.flag.dif;
}
