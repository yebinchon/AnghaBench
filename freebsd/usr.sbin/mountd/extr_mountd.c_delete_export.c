
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvfsconf {int vfc_flags; } ;
struct statfs {int f_flags; int f_mntonname; int f_mntfromname; int f_fstypename; } ;
struct iovec {void* iov_len; int iov_base; } ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTSUP ;
 scalar_t__ EXDEV ;
 int LOG_ERR ;
 int MNT_EXPORTED ;
 int VFCF_NETWORK ;
 scalar_t__ errno ;
 scalar_t__ getvfsbyname (int ,struct xvfsconf*) ;
 scalar_t__ nmount (struct iovec*,int,int) ;
 void* strlen (int ) ;
 int syslog (int ,char*,int ,...) ;

__attribute__((used)) static void
delete_export(struct iovec *iov, int iovlen, struct statfs *fsp, char *errmsg)
{
 struct xvfsconf vfc;

 if (getvfsbyname(fsp->f_fstypename, &vfc) != 0) {
  syslog(LOG_ERR, "getvfsbyname() failed for %s",
      fsp->f_fstypename);
  return;
 }





 if (!(fsp->f_flags & MNT_EXPORTED))
  return;





 if (vfc.vfc_flags & VFCF_NETWORK)
  return;

 iov[1].iov_base = fsp->f_fstypename;
 iov[1].iov_len = strlen(fsp->f_fstypename) + 1;
 iov[3].iov_base = fsp->f_mntonname;
 iov[3].iov_len = strlen(fsp->f_mntonname) + 1;
 iov[5].iov_base = fsp->f_mntfromname;
 iov[5].iov_len = strlen(fsp->f_mntfromname) + 1;
 errmsg[0] = '\0';





 if (nmount(iov, iovlen, fsp->f_flags) < 0 && errno != ENOENT &&
     errno != ENOTSUP && errno != EXDEV) {
  syslog(LOG_ERR,
      "can't delete exports for %s: %m %s",
      fsp->f_mntonname, errmsg);
 }
}
