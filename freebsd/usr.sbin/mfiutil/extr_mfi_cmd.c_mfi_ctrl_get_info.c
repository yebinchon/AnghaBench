
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ctrl_info {int dummy; } ;


 int MFI_DCMD_CTRL_GETINFO ;
 int mfi_dcmd_command (int,int ,struct mfi_ctrl_info*,int,int *,int ,int *) ;

int
mfi_ctrl_get_info(int fd, struct mfi_ctrl_info *info, uint8_t *statusp)
{

 return (mfi_dcmd_command(fd, MFI_DCMD_CTRL_GETINFO, info,
     sizeof(struct mfi_ctrl_info), ((void*)0), 0, statusp));
}
