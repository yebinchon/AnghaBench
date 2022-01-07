
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xucred {int cr_groups; int cr_ngroups; int cr_uid; } ;
struct ucred {int * cr_prison; int * cr_groups; int cr_svgid; int cr_rgid; int cr_svuid; int cr_ruid; int cr_uid; } ;
struct TYPE_2__ {int oa_flavor; } ;
struct svc_req {scalar_t__ rq_clntcred; TYPE_1__ rq_cred; } ;



 int FALSE ;

 int TRUE ;
 int _svcauth_rpcsec_gss_getcred (struct svc_req*,struct ucred**,int*) ;
 struct ucred* crget () ;
 int crsetgroups (struct ucred*,int ,int ) ;
 int prison0 ;
 int prison_hold (int *) ;

int
svc_getcred(struct svc_req *rqst, struct ucred **crp, int *flavorp)
{
 struct ucred *cr = ((void*)0);
 int flavor;
 struct xucred *xcr;

 flavor = rqst->rq_cred.oa_flavor;
 if (flavorp)
  *flavorp = flavor;

 switch (flavor) {
 case 129:
  xcr = (struct xucred *) rqst->rq_clntcred;
  cr = crget();
  cr->cr_uid = cr->cr_ruid = cr->cr_svuid = xcr->cr_uid;
  crsetgroups(cr, xcr->cr_ngroups, xcr->cr_groups);
  cr->cr_rgid = cr->cr_svgid = cr->cr_groups[0];
  cr->cr_prison = &prison0;
  prison_hold(cr->cr_prison);
  *crp = cr;
  return (TRUE);

 case 128:
  if (!_svcauth_rpcsec_gss_getcred)
   return (FALSE);
  return (_svcauth_rpcsec_gss_getcred(rqst, crp, flavorp));

 default:
  return (FALSE);
 }
}
