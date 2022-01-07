
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_ctrl_props {int dummy; } ;


 int MFI_DCMD_CTRL_SET_PROPS ;
 int mfi_dcmd_command (int,int ,struct mfi_ctrl_props*,int,int *,int ,int *) ;

__attribute__((used)) static int
mfi_ctrl_set_properties(int fd, struct mfi_ctrl_props *info)
{

 return (mfi_dcmd_command(fd, MFI_DCMD_CTRL_SET_PROPS, info,
     sizeof(struct mfi_ctrl_props), ((void*)0), 0, ((void*)0)));
}
