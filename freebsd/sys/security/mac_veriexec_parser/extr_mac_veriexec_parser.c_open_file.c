
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;


 int FREAD ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int ,char const*,int ) ;
 int UIO_SYSSPACE ;
 int curthread ;
 int pwd_ensure_dirs () ;
 int vn_open (struct nameidata*,int*,int ,int *) ;

__attribute__((used)) static int
open_file(const char *path, struct nameidata *nid)
{
 int flags, rc;

 flags = FREAD;

 pwd_ensure_dirs();

 NDINIT(nid, LOOKUP, 0, UIO_SYSSPACE, path, curthread);
 rc = vn_open(nid, &flags, 0, ((void*)0));
 NDFREE(nid, NDF_ONLY_PNBUF);
 if (rc != 0)
  return (rc);

 return (0);
}
