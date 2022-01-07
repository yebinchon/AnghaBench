
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int tv_nsec; scalar_t__ tv_sec; } ;


 int d ;
 TYPE_1__ dmar_hw_timeout ;

uint64_t
dmar_get_timeout(void)
{

 return ((uint64_t)dmar_hw_timeout.tv_sec * d +
     dmar_hw_timeout.tv_nsec);
}
