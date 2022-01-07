
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nameidata {int ni_vp; } ;


 int AUDITVNODE1 ;
 int AUDIT_ARG_TEXT (char*) ;
 int AUDIT_ARG_VALUE (int) ;
 int EXTATTR_MAXNAMELEN ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char const*,struct thread*) ;
 int UIO_USERSPACE ;
 int copyinstr (char const*,char*,int,int *) ;
 int extattr_set_vp (int ,int,char*,void*,size_t,struct thread*) ;
 int namei (struct nameidata*) ;
 int vrele (int ) ;

__attribute__((used)) static int
kern_extattr_set_path(struct thread *td, const char *path, int attrnamespace,
    const char *uattrname, void *data, size_t nbytes, int follow)
{
 struct nameidata nd;
 char attrname[EXTATTR_MAXNAMELEN];
 int error;

 AUDIT_ARG_VALUE(attrnamespace);
 error = copyinstr(uattrname, attrname, EXTATTR_MAXNAMELEN, ((void*)0));
 if (error)
  return (error);
 AUDIT_ARG_TEXT(attrname);

 NDINIT(&nd, LOOKUP, follow | AUDITVNODE1, UIO_USERSPACE, path, td);
 error = namei(&nd);
 if (error)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);

 error = extattr_set_vp(nd.ni_vp, attrnamespace, attrname, data,
     nbytes, td);

 vrele(nd.ni_vp);
 return (error);
}
