
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
typedef int acl_type_t ;


 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDINIT (struct nameidata*,int ,int,int ,char const*,struct thread*) ;
 int UIO_USERSPACE ;
 int namei (struct nameidata*) ;
 int vacl_delete (struct thread*,int ,int ) ;

__attribute__((used)) static int
kern___acl_delete_path(struct thread *td, const char *path,
    acl_type_t type, int follow)
{
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, follow, UIO_USERSPACE, path, td);
 error = namei(&nd);
 if (error == 0) {
  error = vacl_delete(td, nd.ni_vp, type);
  NDFREE(&nd, 0);
 }
 return (error);
}
