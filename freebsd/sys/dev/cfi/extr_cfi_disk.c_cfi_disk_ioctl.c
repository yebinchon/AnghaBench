
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct disk {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
cfi_disk_ioctl(struct disk *dp, u_long cmd, void *data, int fflag,
 struct thread *td)
{
 return EINVAL;
}
