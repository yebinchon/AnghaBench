
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
typedef int NFSPROC_T ;


 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,int *) ;
 int UIO_USERSPACE ;
 int namei (struct nameidata*) ;

int
nfsrv_lookupfilename(struct nameidata *ndp, char *fname, NFSPROC_T *p)
{
 int error;

 NDINIT(ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_USERSPACE, fname,
     p);
 error = namei(ndp);
 if (!error) {
  NDFREE(ndp, NDF_ONLY_PNBUF);
 }
 return (error);
}
