
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_bbu_properties {int dummy; } ;


 int MFI_DCMD_BBU_SET_PROP ;
 int mfi_dcmd_command (int,int ,struct mfi_bbu_properties*,int,int *,int ,int *) ;

int
mfi_bbu_set_props(int fd, struct mfi_bbu_properties *props, uint8_t *statusp)
{

 return (mfi_dcmd_command(fd, MFI_DCMD_BBU_SET_PROP, props,
     sizeof(*props), ((void*)0), 0, statusp));
}
