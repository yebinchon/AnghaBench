
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_props {int default_cache_policy; } ;



__attribute__((used)) static void
stage_cache_setting(struct mfi_ld_props *props, uint8_t new_policy,
    uint8_t mask)
{

 props->default_cache_policy &= ~mask;
 props->default_cache_policy |= new_policy;
}
