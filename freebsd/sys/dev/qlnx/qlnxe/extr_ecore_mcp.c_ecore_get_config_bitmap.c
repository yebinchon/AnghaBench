
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CONFIG_ECORE_FCOE_BITMAP_IDX ;
 int CONFIG_ECORE_ISCSI_BITMAP_IDX ;
 int CONFIG_ECORE_IWARP_BITMAP_IDX ;
 int CONFIG_ECORE_L2_BITMAP_IDX ;
 int CONFIG_ECORE_LL2_BITMAP_IDX ;
 int CONFIG_ECORE_ROCE_BITMAP_IDX ;
 int CONFIG_ECORE_SRIOV_BITMAP_IDX ;

__attribute__((used)) static u32 ecore_get_config_bitmap(void)
{
 u32 config_bitmap = 0x0;
 return config_bitmap;
}
