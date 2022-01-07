
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_props {int dummy; } ;


 int MFI_DCMD_LD_GET_PROP ;
 int mfi_dcmd_command (int,int ,struct mfi_ld_props*,int,int *,int,int *) ;

__attribute__((used)) static int
mfi_ld_get_props(int fd, uint8_t target_id, struct mfi_ld_props *props)
{
 uint8_t mbox[1];

 mbox[0] = target_id;
 return (mfi_dcmd_command(fd, MFI_DCMD_LD_GET_PROP, props,
     sizeof(struct mfi_ld_props), mbox, 1, ((void*)0)));
}
