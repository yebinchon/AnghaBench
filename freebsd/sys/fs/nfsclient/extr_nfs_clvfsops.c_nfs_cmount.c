
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nfs_args {int dummy; } ;
struct mntarg {int dummy; } ;


 int copyin (void*,struct nfs_args*,int) ;
 int kernel_mount (struct mntarg*,int ) ;
 struct mntarg* mount_arg (struct mntarg*,char*,struct nfs_args*,int) ;

__attribute__((used)) static int
nfs_cmount(struct mntarg *ma, void *data, uint64_t flags)
{
 int error;
 struct nfs_args args;

 error = copyin(data, &args, sizeof (struct nfs_args));
 if (error)
  return error;

 ma = mount_arg(ma, "nfs_args", &args, sizeof args);

 error = kernel_mount(ma, flags);
 return (error);
}
