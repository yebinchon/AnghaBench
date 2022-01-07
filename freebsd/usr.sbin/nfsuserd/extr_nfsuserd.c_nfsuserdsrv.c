
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int xdrproc_t ;
typedef int uid_t ;
typedef int u_short ;
struct svc_req {int rq_proc; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; } ;
struct TYPE_14__ {int s_addr; } ;
struct sockaddr_in {TYPE_9__ sin_addr; int sin_port; } ;
struct passwd {int pw_name; int pw_uid; int pw_gid; } ;
struct nfsd_idargs {int nid_usertimeout; int nid_ngroup; int nid_name; int nid_gid; int nid_flag; int * nid_grps; void* nid_namelen; int nid_uid; } ;
struct info {int retval; int name; int id; } ;
struct group {int gr_name; int gr_gid; } ;
typedef int gid_t ;
typedef int * caddr_t ;
struct TYPE_12__ {int len; scalar_t__ buf; } ;
struct TYPE_13__ {TYPE_1__ xp_rtaddr; } ;
struct TYPE_11__ {int ss_family; } ;
typedef TYPE_2__ SVCXPRT ;




 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int INET6_ADDRSTRLEN ;
 int IPPORT_RESERVED ;
 int IPV6PORT_RESERVED ;
 int LOG_ERR ;
 int NFSID_ADDGID ;
 int NFSID_ADDGROUPNAME ;
 int NFSID_ADDUID ;
 int NFSID_ADDUSERNAME ;
 int NFSSVC_IDNAME ;
 int NFSSVC_NEWSTRUCT ;
 int NGROUPS ;





 int defaultgid ;
 int defaultgroup ;
 int defaultuid ;
 int defaultuser ;
 void* defusertimeout ;
 TYPE_10__ fromip ;
 struct group* getgrgid (int ) ;
 struct group* getgrnam (int ) ;
 int getgrouplist (int ,int ,int *,int*) ;
 struct passwd* getpwnam (int ) ;
 struct passwd* getpwuid (int ) ;
 int inet_ntoa (TYPE_9__) ;
 int * inet_ntop (int const,int *,char*,int) ;
 int manage_gids ;
 int nfsbind_localhost () ;
 int nfssvc (int,struct nfsd_idargs*) ;
 int ntohs (int ) ;
 void* strlen (int ) ;
 int svc_getargs (TYPE_2__*,int ,int *) ;
 int svc_sendreply (TYPE_2__*,int ,int *) ;
 int svcerr_decode (TYPE_2__*) ;
 int svcerr_noproc (TYPE_2__*) ;
 int svcerr_weakauth (TYPE_2__*) ;
 int syslog (int ,char*,...) ;
 int verbose ;
 int xdr_getid ;
 int xdr_getname ;
 int xdr_retval ;
 int xdr_void ;

__attribute__((used)) static void
nfsuserdsrv(struct svc_req *rqstp, SVCXPRT *transp)
{
 struct passwd *pwd;
 struct group *grp;
 int error;




 struct info info;
 struct nfsd_idargs nid;
 gid_t grps[NGROUPS];
 int ngroup;
 if (rqstp->rq_proc != 132) {
  switch (fromip.ss_family) {
  }
 }
 switch (rqstp->rq_proc) {
 case 132:
  if (!svc_sendreply(transp, (xdrproc_t)xdr_void, ((void*)0)))
   syslog(LOG_ERR, "Can't send reply");
  return;
 case 129:
  if (!svc_getargs(transp, (xdrproc_t)xdr_getid,
      (caddr_t)&info)) {
   svcerr_decode(transp);
   return;
  }
  pwd = getpwuid((uid_t)info.id);
  info.retval = 0;
  if (pwd != ((void*)0)) {
   nid.nid_usertimeout = defusertimeout;
   nid.nid_uid = pwd->pw_uid;
   nid.nid_name = pwd->pw_name;
   if (manage_gids != 0) {

    ngroup = NGROUPS;
    if (getgrouplist(pwd->pw_name, pwd->pw_gid,
        grps, &ngroup) < 0)
     syslog(LOG_ERR, "Group list too small");
    nid.nid_ngroup = ngroup;
    nid.nid_grps = grps;
   } else {
    nid.nid_ngroup = 0;
    nid.nid_grps = ((void*)0);
   }
  } else {
   nid.nid_usertimeout = 5;
   nid.nid_uid = (uid_t)info.id;
   nid.nid_name = defaultuser;
   nid.nid_ngroup = 0;
   nid.nid_grps = ((void*)0);
  }
  nid.nid_namelen = strlen(nid.nid_name);
  nid.nid_flag = NFSID_ADDUID;
  error = nfssvc(NFSSVC_IDNAME | NFSSVC_NEWSTRUCT, &nid);
  if (error) {
   info.retval = error;
   syslog(LOG_ERR, "Can't add user %s\n", pwd->pw_name);
  } else if (verbose) {
   syslog(LOG_ERR,"Added uid=%d name=%s\n",
       nid.nid_uid, nid.nid_name);
  }
  if (!svc_sendreply(transp, (xdrproc_t)xdr_retval,
      (caddr_t)&info))
   syslog(LOG_ERR, "Can't send reply");
  return;
 case 131:
  if (!svc_getargs(transp, (xdrproc_t)xdr_getid,
      (caddr_t)&info)) {
   svcerr_decode(transp);
   return;
  }
  grp = getgrgid((gid_t)info.id);
  info.retval = 0;
  if (grp != ((void*)0)) {
   nid.nid_usertimeout = defusertimeout;
   nid.nid_gid = grp->gr_gid;
   nid.nid_name = grp->gr_name;
  } else {
   nid.nid_usertimeout = 5;
   nid.nid_gid = (gid_t)info.id;
   nid.nid_name = defaultgroup;
  }
  nid.nid_namelen = strlen(nid.nid_name);
  nid.nid_ngroup = 0;
  nid.nid_grps = ((void*)0);
  nid.nid_flag = NFSID_ADDGID;
  error = nfssvc(NFSSVC_IDNAME | NFSSVC_NEWSTRUCT, &nid);
  if (error) {
   info.retval = error;
   syslog(LOG_ERR, "Can't add group %s\n",
       grp->gr_name);
  } else if (verbose) {
   syslog(LOG_ERR,"Added gid=%d name=%s\n",
       nid.nid_gid, nid.nid_name);
  }
  if (!svc_sendreply(transp, (xdrproc_t)xdr_retval,
      (caddr_t)&info))
   syslog(LOG_ERR, "Can't send reply");
  return;
 case 128:
  if (!svc_getargs(transp, (xdrproc_t)xdr_getname,
      (caddr_t)&info)) {
   svcerr_decode(transp);
   return;
  }
  pwd = getpwnam(info.name);
  info.retval = 0;
  if (pwd != ((void*)0)) {
   nid.nid_usertimeout = defusertimeout;
   nid.nid_uid = pwd->pw_uid;
   nid.nid_name = pwd->pw_name;
  } else {
   nid.nid_usertimeout = 5;
   nid.nid_uid = defaultuid;
   nid.nid_name = info.name;
  }
  nid.nid_namelen = strlen(nid.nid_name);
  nid.nid_ngroup = 0;
  nid.nid_grps = ((void*)0);
  nid.nid_flag = NFSID_ADDUSERNAME;
  error = nfssvc(NFSSVC_IDNAME | NFSSVC_NEWSTRUCT, &nid);
  if (error) {
   info.retval = error;
   syslog(LOG_ERR, "Can't add user %s\n", pwd->pw_name);
  } else if (verbose) {
   syslog(LOG_ERR,"Added uid=%d name=%s\n",
       nid.nid_uid, nid.nid_name);
  }
  if (!svc_sendreply(transp, (xdrproc_t)xdr_retval,
      (caddr_t)&info))
   syslog(LOG_ERR, "Can't send reply");
  return;
 case 130:
  if (!svc_getargs(transp, (xdrproc_t)xdr_getname,
      (caddr_t)&info)) {
   svcerr_decode(transp);
   return;
  }
  grp = getgrnam(info.name);
  info.retval = 0;
  if (grp != ((void*)0)) {
   nid.nid_usertimeout = defusertimeout;
   nid.nid_gid = grp->gr_gid;
   nid.nid_name = grp->gr_name;
  } else {
   nid.nid_usertimeout = 5;
   nid.nid_gid = defaultgid;
   nid.nid_name = info.name;
  }
  nid.nid_namelen = strlen(nid.nid_name);
  nid.nid_ngroup = 0;
  nid.nid_grps = ((void*)0);
  nid.nid_flag = NFSID_ADDGROUPNAME;
  error = nfssvc(NFSSVC_IDNAME | NFSSVC_NEWSTRUCT, &nid);
  if (error) {
   info.retval = error;
   syslog(LOG_ERR, "Can't add group %s\n",
       grp->gr_name);
  } else if (verbose) {
   syslog(LOG_ERR,"Added gid=%d name=%s\n",
       nid.nid_gid, nid.nid_name);
  }
  if (!svc_sendreply(transp, (xdrproc_t)xdr_retval,
      (caddr_t)&info))
   syslog(LOG_ERR, "Can't send reply");
  return;
 default:
  svcerr_noproc(transp);
  return;
 };
}
