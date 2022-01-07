
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int ni_vp; } ;


 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char const*,int ) ;
 int UIO_SYSSPACE ;
 int curthread ;
 int namei (struct nameidata*) ;
 int vput (int ) ;

__attribute__((used)) static int
parse_mount_dev_present(const char *dev)
{
 struct nameidata nd;
 int error;

 NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, dev, curthread);
 error = namei(&nd);
 if (!error)
  vput(nd.ni_vp);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 return (error != 0) ? 0 : 1;
}
