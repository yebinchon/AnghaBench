
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mfi_evt_log_state {int dummy; } ;


 int MFI_DCMD_CTRL_EVENT_GETINFO ;
 int mfi_dcmd_command (int,int ,struct mfi_evt_log_state*,int,int *,int ,int *) ;

__attribute__((used)) static int
mfi_event_get_info(int fd, struct mfi_evt_log_state *info, uint8_t *statusp)
{

 return (mfi_dcmd_command(fd, MFI_DCMD_CTRL_EVENT_GETINFO, info,
     sizeof(struct mfi_evt_log_state), ((void*)0), 0, statusp));
}
