
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MFI_DCMD_TIME_SECS_GET ;
 scalar_t__ mfi_dcmd_command (int,int ,int *,int,int *,int ,int *) ;
 int warn (char*) ;

__attribute__((used)) static void
mfi_get_time(int fd, uint32_t *at)
{

 if (mfi_dcmd_command(fd, MFI_DCMD_TIME_SECS_GET, at, sizeof(*at), ((void*)0),
     0, ((void*)0)) < 0) {
  warn("Couldn't fetch adapter time");
  at = 0;
 }
}
