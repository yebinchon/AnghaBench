
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_config_data {int dummy; } ;


 int MFI_DCMD_CFG_READ ;
 int mfi_config_read_opcode (int,int ,struct mfi_config_data**,int *,int ) ;

int
mfi_config_read(int fd, struct mfi_config_data **configp)
{
 return mfi_config_read_opcode(fd, MFI_DCMD_CFG_READ, configp, ((void*)0), 0);
}
