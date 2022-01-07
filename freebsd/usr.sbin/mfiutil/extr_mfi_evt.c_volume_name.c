
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_evt_ld {int target_id; } ;


 char const* mfi_volume_name (int,int ) ;

__attribute__((used)) static const char *
volume_name(int fd, struct mfi_evt_ld *ld)
{

 return (mfi_volume_name(fd, ld->target_id));
}
