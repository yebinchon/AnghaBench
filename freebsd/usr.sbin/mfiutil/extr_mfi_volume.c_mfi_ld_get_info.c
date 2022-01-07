
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_info {int dummy; } ;


 int MFI_DCMD_LD_GET_INFO ;
 int mfi_dcmd_command (int,int ,struct mfi_ld_info*,int,int *,int,int *) ;

int
mfi_ld_get_info(int fd, uint8_t target_id, struct mfi_ld_info *info,
    uint8_t *statusp)
{
 uint8_t mbox[1];

 mbox[0] = target_id;
 return (mfi_dcmd_command(fd, MFI_DCMD_LD_GET_INFO, info,
     sizeof(struct mfi_ld_info), mbox, 1, statusp));
}
