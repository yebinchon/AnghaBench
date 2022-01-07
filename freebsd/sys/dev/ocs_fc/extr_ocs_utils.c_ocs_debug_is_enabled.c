
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ocs_debug_mask ;

int ocs_debug_is_enabled(uint32_t mask) {
 return (ocs_debug_mask & mask) == mask;
}
