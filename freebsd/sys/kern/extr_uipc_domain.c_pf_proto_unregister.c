
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_type; int pr_protocol; int * pr_usrreqs; int * pr_drain; int * pr_slowtimo; int * pr_fasttimo; int * pr_init; int * pr_ctloutput; int * pr_ctlinput; int * pr_output; int * pr_input; scalar_t__ pr_flags; struct domain* pr_domain; } ;
struct domain {struct protosw* dom_protoswNPROTOSW; struct protosw* dom_protosw; } ;


 int EMLINK ;
 int EPFNOSUPPORT ;
 int EPROTONOSUPPORT ;
 int EPROTOTYPE ;
 int PROTO_SPACER ;
 int dom_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nousrreqs ;
 struct domain* pffinddomain (int) ;

int
pf_proto_unregister(int family, int protocol, int type)
{
 struct domain *dp;
 struct protosw *pr, *dpr;


 if (family == 0)
  return (EPFNOSUPPORT);
 if (protocol == 0)
  return (EPROTONOSUPPORT);
 if (type == 0)
  return (EPROTOTYPE);


 dp = pffinddomain(family);
 if (dp == ((void*)0))
  return (EPFNOSUPPORT);

 dpr = ((void*)0);


 mtx_lock(&dom_mtx);


 for (pr = dp->dom_protosw; pr < dp->dom_protoswNPROTOSW; pr++) {
  if ((pr->pr_type == type) && (pr->pr_protocol == protocol)) {
   if (dpr != ((void*)0)) {
    mtx_unlock(&dom_mtx);
    return (EMLINK);
   } else
    dpr = pr;
  }
 }


 if (dpr == ((void*)0)) {
  mtx_unlock(&dom_mtx);
  return (EPROTONOSUPPORT);
 }


 dpr->pr_type = 0;
 dpr->pr_domain = dp;
 dpr->pr_protocol = PROTO_SPACER;
 dpr->pr_flags = 0;
 dpr->pr_input = ((void*)0);
 dpr->pr_output = ((void*)0);
 dpr->pr_ctlinput = ((void*)0);
 dpr->pr_ctloutput = ((void*)0);
 dpr->pr_init = ((void*)0);
 dpr->pr_fasttimo = ((void*)0);
 dpr->pr_slowtimo = ((void*)0);
 dpr->pr_drain = ((void*)0);
 dpr->pr_usrreqs = &nousrreqs;


 mtx_unlock(&dom_mtx);

 return (0);
}
