
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_short ;
struct svc_req {int rq_proc; int rq_vers; } ;
struct statfs {int f_fsid; } ;
struct stat {int st_mode; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct fhreturn {int fhr_flag; int fhr_numsecflavors; int* fhr_secflavors; int fhr_fh; int fhr_vers; } ;
struct exportlist {int ex_defnumsecflavors; int* ex_defsecflavors; struct dirlist* ex_dirl; struct dirlist* ex_defdir; } ;
struct dirlist {int dummy; } ;
typedef int sigset_t ;
typedef int nfsfh_t ;
typedef int fhandle_t ;
typedef int * caddr_t ;
struct TYPE_2__ {struct sockaddr* buf; } ;
typedef int SVCXPRT ;




 int DP_HOSTSET ;
 int EACCES ;
 int ENOENT ;
 int ENOTDIR ;
 int IPPORT_RESERVED ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int MAXPATHLEN ;
 int MNTPATHLEN ;





 int NI_MAXHOST ;
 int NI_NUMERICHOST ;

 int SIGHUP ;
 int SIG_BLOCK ;
 int SIG_UNBLOCK ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int add_mlist (char*,char*) ;
 int chdir (char*) ;
 int chk_host (struct dirlist*,struct sockaddr*,int*,int*,int*,int**) ;
 int debug ;
 int del_mlist (char*,char*) ;
 int dir_only ;
 struct dirlist* dirp_search (struct dirlist*,char*) ;
 int dolog ;
 int errno ;
 struct exportlist* ex_search (int *,int ) ;
 int exphead ;
 int getfh (char*,int *) ;
 int getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 int memset (int *,int ,int) ;
 int ntohs (int ) ;
 int * realpath (char*,char*) ;
 int resvport_only ;
 int scan_tree (struct dirlist*,struct sockaddr*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stat (char*,struct stat*) ;
 int statfs (char*,struct statfs*) ;
 int svc_getargs (int *,int ,char*) ;
 TYPE_1__* svc_getrpccaller (int *) ;
 int svc_sendreply (int *,int ,int *) ;
 int svcerr_decode (int *) ;
 int svcerr_noproc (int *) ;
 int svcerr_weakauth (int *) ;
 int syslog (int ,char*,...) ;
 int warnx (char*,...) ;
 int xdr_dir ;
 int xdr_explist ;
 int xdr_explist_brief ;
 int xdr_fhs ;
 int xdr_long ;
 int xdr_mlist ;
 int xdr_void ;

void
mntsrv(struct svc_req *rqstp, SVCXPRT *transp)
{
 struct exportlist *ep;
 struct dirlist *dp;
 struct fhreturn fhr;
 struct stat stb;
 struct statfs fsb;
 char host[NI_MAXHOST], numerichost[NI_MAXHOST];
 int lookup_failed = 1;
 struct sockaddr *saddr;
 u_short sport;
 char rpcpath[MNTPATHLEN + 1], dirpath[MAXPATHLEN];
 int bad = 0, defset, hostset;
 sigset_t sighup_mask;
 int numsecflavors, *secflavorsp;

 sigemptyset(&sighup_mask);
 sigaddset(&sighup_mask, SIGHUP);
 saddr = svc_getrpccaller(transp)->buf;
 switch (saddr->sa_family) {
 case 134:
  sport = ntohs(((struct sockaddr_in6 *)saddr)->sin6_port);
  break;
 case 135:
  sport = ntohs(((struct sockaddr_in *)saddr)->sin_port);
  break;
 default:
  syslog(LOG_ERR, "request from unknown address family");
  return;
 }
 switch (rqstp->rq_proc) {
 case 131:
 case 130:
 case 129:
  lookup_failed = getnameinfo(saddr, saddr->sa_len, host,
      sizeof host, ((void*)0), 0, 0);
 }
 getnameinfo(saddr, saddr->sa_len, numerichost,
     sizeof numerichost, ((void*)0), 0, NI_NUMERICHOST);
 switch (rqstp->rq_proc) {
 case 128:
  if (!svc_sendreply(transp, (xdrproc_t)xdr_void, ((void*)0)))
   syslog(LOG_ERR, "can't send reply");
  return;
 case 131:
  if (sport >= IPPORT_RESERVED && resvport_only) {
   syslog(LOG_NOTICE,
       "mount request from %s from unprivileged port",
       numerichost);
   svcerr_weakauth(transp);
   return;
  }
  if (!svc_getargs(transp, (xdrproc_t)xdr_dir, rpcpath)) {
   syslog(LOG_NOTICE, "undecodable mount request from %s",
       numerichost);
   svcerr_decode(transp);
   return;
  }






  if (realpath(rpcpath, dirpath) == ((void*)0) ||
      stat(dirpath, &stb) < 0 ||
      statfs(dirpath, &fsb) < 0) {
   chdir("/");
   syslog(LOG_NOTICE,
       "mount request from %s for non existent path %s",
       numerichost, dirpath);
   if (debug)
    warnx("stat failed on %s", dirpath);
   bad = ENOENT;
  }
  if (!bad &&
      !S_ISDIR(stb.st_mode) &&
      (dir_only || !S_ISREG(stb.st_mode))) {
   syslog(LOG_NOTICE,
       "mount request from %s for non-directory path %s",
       numerichost, dirpath);
   if (debug)
    warnx("mounting non-directory %s", dirpath);
   bad = ENOTDIR;
  }


  sigprocmask(SIG_BLOCK, &sighup_mask, ((void*)0));
  if (bad)
   ep = ((void*)0);
  else
   ep = ex_search(&fsb.f_fsid, exphead);
  hostset = defset = 0;
  if (ep && (chk_host(ep->ex_defdir, saddr, &defset, &hostset,
      &numsecflavors, &secflavorsp) ||
      ((dp = dirp_search(ep->ex_dirl, dirpath)) &&
        chk_host(dp, saddr, &defset, &hostset, &numsecflavors,
         &secflavorsp)) ||
      (defset && scan_tree(ep->ex_defdir, saddr) == 0 &&
       scan_tree(ep->ex_dirl, saddr) == 0))) {
   if (bad) {
    if (!svc_sendreply(transp, (xdrproc_t)xdr_long,
        (caddr_t)&bad))
     syslog(LOG_ERR, "can't send reply");
    sigprocmask(SIG_UNBLOCK, &sighup_mask, ((void*)0));
    return;
   }
   if (hostset & DP_HOSTSET) {
    fhr.fhr_flag = hostset;
    fhr.fhr_numsecflavors = numsecflavors;
    fhr.fhr_secflavors = secflavorsp;
   } else {
    fhr.fhr_flag = defset;
    fhr.fhr_numsecflavors = ep->ex_defnumsecflavors;
    fhr.fhr_secflavors = ep->ex_defsecflavors;
   }
   fhr.fhr_vers = rqstp->rq_vers;

   memset(&fhr.fhr_fh, 0, sizeof(nfsfh_t));
   if (getfh(dirpath, (fhandle_t *)&fhr.fhr_fh) < 0) {
    bad = errno;
    syslog(LOG_ERR, "can't get fh for %s", dirpath);
    if (!svc_sendreply(transp, (xdrproc_t)xdr_long,
        (caddr_t)&bad))
     syslog(LOG_ERR, "can't send reply");
    sigprocmask(SIG_UNBLOCK, &sighup_mask, ((void*)0));
    return;
   }
   if (!svc_sendreply(transp, (xdrproc_t)xdr_fhs,
       (caddr_t)&fhr))
    syslog(LOG_ERR, "can't send reply");
   if (!lookup_failed)
    add_mlist(host, dirpath);
   else
    add_mlist(numerichost, dirpath);
   if (debug)
    warnx("mount successful");
   if (dolog)
    syslog(LOG_NOTICE,
        "mount request succeeded from %s for %s",
        numerichost, dirpath);
  } else {
   if (!bad)
    bad = EACCES;
   syslog(LOG_NOTICE,
       "mount request denied from %s for %s",
       numerichost, dirpath);
  }

  if (bad && !svc_sendreply(transp, (xdrproc_t)xdr_long,
      (caddr_t)&bad))
   syslog(LOG_ERR, "can't send reply");
  sigprocmask(SIG_UNBLOCK, &sighup_mask, ((void*)0));
  return;
 case 133:
  if (!svc_sendreply(transp, (xdrproc_t)xdr_mlist, (caddr_t)((void*)0)))
   syslog(LOG_ERR, "can't send reply");
  else if (dolog)
   syslog(LOG_NOTICE,
       "dump request succeeded from %s",
       numerichost);
  return;
 case 130:
  if (sport >= IPPORT_RESERVED && resvport_only) {
   syslog(LOG_NOTICE,
       "umount request from %s from unprivileged port",
       numerichost);
   svcerr_weakauth(transp);
   return;
  }
  if (!svc_getargs(transp, (xdrproc_t)xdr_dir, rpcpath)) {
   syslog(LOG_NOTICE, "undecodable umount request from %s",
       numerichost);
   svcerr_decode(transp);
   return;
  }
  if (realpath(rpcpath, dirpath) == ((void*)0)) {
   syslog(LOG_NOTICE, "umount request from %s "
       "for non existent path %s",
       numerichost, dirpath);
  }
  if (!svc_sendreply(transp, (xdrproc_t)xdr_void, (caddr_t)((void*)0)))
   syslog(LOG_ERR, "can't send reply");
  if (!lookup_failed)
   del_mlist(host, dirpath);
  del_mlist(numerichost, dirpath);
  if (dolog)
   syslog(LOG_NOTICE,
       "umount request succeeded from %s for %s",
       numerichost, dirpath);
  return;
 case 129:
  if (sport >= IPPORT_RESERVED && resvport_only) {
   syslog(LOG_NOTICE,
       "umountall request from %s from unprivileged port",
       numerichost);
   svcerr_weakauth(transp);
   return;
  }
  if (!svc_sendreply(transp, (xdrproc_t)xdr_void, (caddr_t)((void*)0)))
   syslog(LOG_ERR, "can't send reply");
  if (!lookup_failed)
   del_mlist(host, ((void*)0));
  del_mlist(numerichost, ((void*)0));
  if (dolog)
   syslog(LOG_NOTICE,
       "umountall request succeeded from %s",
       numerichost);
  return;
 case 132:
  if (!svc_sendreply(transp, (xdrproc_t)xdr_explist, (caddr_t)((void*)0)))
   if (!svc_sendreply(transp, (xdrproc_t)xdr_explist_brief,
       (caddr_t)((void*)0)))
    syslog(LOG_ERR, "can't send reply");
  if (dolog)
   syslog(LOG_NOTICE,
       "export request succeeded from %s",
       numerichost);
  return;
 default:
  svcerr_noproc(transp);
  return;
 }
}
