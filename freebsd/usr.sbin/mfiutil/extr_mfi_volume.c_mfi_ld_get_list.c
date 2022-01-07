
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_list {int dummy; } ;


 int MFI_DCMD_LD_GET_LIST ;
 int mfi_dcmd_command (int,int ,struct mfi_ld_list*,int,int *,int ,int *) ;

int
mfi_ld_get_list(int fd, struct mfi_ld_list *list, uint8_t *statusp)
{

 return (mfi_dcmd_command(fd, MFI_DCMD_LD_GET_LIST, list,
  sizeof(struct mfi_ld_list), ((void*)0), 0, statusp));
}
