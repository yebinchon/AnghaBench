
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ufs_args {int fspec; int export; } ;
struct mntarg {int dummy; } ;
struct export_args {int dummy; } ;
typedef int exp ;


 int EINVAL ;
 int MAXPATHLEN ;
 int copyin (void*,struct ufs_args*,int) ;
 int kernel_mount (struct mntarg*,int ) ;
 struct mntarg* mount_arg (struct mntarg*,char*,struct export_args*,int) ;
 struct mntarg* mount_argsu (struct mntarg*,char*,int ,int ) ;
 int vfs_oexport_conv (int *,struct export_args*) ;

__attribute__((used)) static int
ffs_cmount(struct mntarg *ma, void *data, uint64_t flags)
{
 struct ufs_args args;
 struct export_args exp;
 int error;

 if (data == ((void*)0))
  return (EINVAL);
 error = copyin(data, &args, sizeof args);
 if (error)
  return (error);
 vfs_oexport_conv(&args.export, &exp);

 ma = mount_argsu(ma, "from", args.fspec, MAXPATHLEN);
 ma = mount_arg(ma, "export", &exp, sizeof(exp));
 error = kernel_mount(ma, flags);

 return (error);
}
