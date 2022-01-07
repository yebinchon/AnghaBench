
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct mfi_pd_info {int dummy; } ;


 int MFI_DCMD_PD_GET_INFO ;
 int mbox_store_device_id (int *,int ) ;
 int mfi_dcmd_command (int,int ,struct mfi_pd_info*,int,int *,int,int *) ;

int
mfi_pd_get_info(int fd, uint16_t device_id, struct mfi_pd_info *info,
    uint8_t *statusp)
{
 uint8_t mbox[2];

 mbox_store_device_id(&mbox[0], device_id);
 return (mfi_dcmd_command(fd, MFI_DCMD_PD_GET_INFO, info,
     sizeof(struct mfi_pd_info), mbox, 2, statusp));
}
