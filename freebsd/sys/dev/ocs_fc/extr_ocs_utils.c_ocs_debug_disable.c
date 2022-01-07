
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ocs_debug_mask ;

void ocs_debug_disable(uint32_t mask) {
 ocs_debug_mask &= ~mask;
}
