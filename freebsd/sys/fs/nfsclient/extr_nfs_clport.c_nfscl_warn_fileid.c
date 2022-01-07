
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct nfsvattr {scalar_t__ na_fileid; } ;
struct TYPE_2__ {char* nmcom_hostname; } ;
struct nfsmount {TYPE_1__ nm_com; scalar_t__* nm_fsid; } ;


 scalar_t__ ncl_fileid_maxwarnings ;
 scalar_t__ ncl_fileid_nwarnings ;
 int printf (char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static void
nfscl_warn_fileid(struct nfsmount *nmp, struct nfsvattr *oldnap,
    struct nfsvattr *newnap)
{
 int off;

 if (ncl_fileid_maxwarnings >= 0 &&
     ncl_fileid_nwarnings >= ncl_fileid_maxwarnings)
  return;
 off = 0;
 if (ncl_fileid_maxwarnings >= 0) {
  if (++ncl_fileid_nwarnings >= ncl_fileid_maxwarnings)
   off = 1;
 }

 printf("newnfs: server '%s' error: fileid changed. "
     "fsid %jx:%jx: expected fileid %#jx, got %#jx. "
     "(BROKEN NFS SERVER OR MIDDLEWARE)\n",
     nmp->nm_com.nmcom_hostname,
     (uintmax_t)nmp->nm_fsid[0],
     (uintmax_t)nmp->nm_fsid[1],
     (uintmax_t)oldnap->na_fileid,
     (uintmax_t)newnap->na_fileid);

 if (off)
  printf("newnfs: Logged %d times about fileid corruption; "
      "going quiet to avoid spamming logs excessively. (Limit "
      "is: %d).\n", ncl_fileid_nwarnings,
      ncl_fileid_maxwarnings);
}
