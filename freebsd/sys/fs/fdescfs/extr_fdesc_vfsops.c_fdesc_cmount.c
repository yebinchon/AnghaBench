
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mntarg {int dummy; } ;


 int kernel_mount (struct mntarg*,int ) ;

int
fdesc_cmount(struct mntarg *ma, void *data, uint64_t flags)
{

 return kernel_mount(ma, flags);
}
