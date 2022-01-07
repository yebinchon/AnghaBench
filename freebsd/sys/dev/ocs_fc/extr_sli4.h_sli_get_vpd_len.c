
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ vpd; } ;
typedef TYPE_2__ sli4_t ;



__attribute__((used)) static inline uint32_t
sli_get_vpd_len(sli4_t *sli4)
{
 return sli4->vpd.length;
}
