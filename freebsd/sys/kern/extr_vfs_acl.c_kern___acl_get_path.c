
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;
struct acl {int dummy; } ;
typedef int acl_type_t ;


 int AUDITVNODE1 ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDINIT (struct nameidata*,int ,int,int ,char const*,struct thread*) ;
 int UIO_USERSPACE ;
 int namei (struct nameidata*) ;
 int vacl_get_acl (struct thread*,int ,int ,struct acl*) ;

__attribute__((used)) static int
kern___acl_get_path(struct thread *td, const char *path, acl_type_t type,
    struct acl *aclp, int follow)
{
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, follow | AUDITVNODE1, UIO_USERSPACE, path, td);
 error = namei(&nd);
 if (error == 0) {
  error = vacl_get_acl(td, nd.ni_vp, type, aclp);
  NDFREE(&nd, 0);
 }
 return (error);
}
