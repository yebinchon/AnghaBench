
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_ld_props {int ld; } ;


 int MFI_DCMD_LD_SET_PROP ;
 int mbox_store_ldref (int *,int *) ;
 int mfi_dcmd_command (int,int ,struct mfi_ld_props*,int,int *,int,int *) ;

__attribute__((used)) static int
mfi_ld_set_props(int fd, struct mfi_ld_props *props)
{
 uint8_t mbox[4];

 mbox_store_ldref(mbox, &props->ld);
 return (mfi_dcmd_command(fd, MFI_DCMD_LD_SET_PROP, props,
     sizeof(struct mfi_ld_props), mbox, 4, ((void*)0)));
}
