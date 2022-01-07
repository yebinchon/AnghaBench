
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
typedef int device_t ;


 long long PLX_NUM_DB ;

__attribute__((used)) static uint64_t
ntb_plx_db_valid_mask(device_t dev)
{

 return ((1LL << PLX_NUM_DB) - 1);
}
