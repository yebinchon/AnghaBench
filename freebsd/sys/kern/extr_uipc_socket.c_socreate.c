
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_9__ {int si_note; } ;
struct TYPE_8__ {int si_note; } ;
struct socket {int so_type; int so_vnet; TYPE_4__ so_wrsel; TYPE_3__ so_rdsel; struct protosw* so_proto; scalar_t__ so_fibnum; int so_cred; } ;
struct protosw {int pr_type; TYPE_5__* pr_usrreqs; TYPE_1__* pr_domain; } ;
struct TYPE_10__ {int (* pru_attach ) (struct socket*,int,struct thread*) ;} ;
struct TYPE_7__ {scalar_t__ p_fibnum; } ;
struct TYPE_6__ {scalar_t__ dom_family; } ;


 int CRED_TO_VNET (struct ucred*) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EAFNOSUPPORT ;
 int ENOBUFS ;
 int EPROTONOSUPPORT ;
 int EPROTOTYPE ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 scalar_t__ PF_ROUTE ;
 int crhold (struct ucred*) ;
 int knlist_init (int *,struct socket*,int ,int ,int ,int ) ;
 int mac_socket_create (struct ucred*,struct socket*) ;
 int * pffinddomain (int) ;
 struct protosw* pffindproto (int,int,int) ;
 struct protosw* pffindtype (int,int) ;
 scalar_t__ prison_check_af (struct ucred*,scalar_t__) ;
 int pru_attach_notsupp (struct socket*,int,struct thread*) ;
 int so_rdknl_assert_locked ;
 int so_rdknl_assert_unlocked ;
 int so_rdknl_lock ;
 int so_rdknl_unlock ;
 int so_wrknl_assert_locked ;
 int so_wrknl_assert_unlocked ;
 int so_wrknl_lock ;
 int so_wrknl_unlock ;
 struct socket* soalloc (int ) ;
 int sodealloc (struct socket*) ;
 int soref (struct socket*) ;
 int stub1 (struct socket*,int,struct thread*) ;

int
socreate(int dom, struct socket **aso, int type, int proto,
    struct ucred *cred, struct thread *td)
{
 struct protosw *prp;
 struct socket *so;
 int error;

 if (proto)
  prp = pffindproto(dom, proto, type);
 else
  prp = pffindtype(dom, type);

 if (prp == ((void*)0)) {

  if (pffinddomain(dom) == ((void*)0))
   return (EAFNOSUPPORT);

  if (proto == 0 && type != 0)
   return (EPROTOTYPE);
  return (EPROTONOSUPPORT);
 }
 if (prp->pr_usrreqs->pru_attach == ((void*)0) ||
     prp->pr_usrreqs->pru_attach == pru_attach_notsupp)
  return (EPROTONOSUPPORT);

 if (prison_check_af(cred, prp->pr_domain->dom_family) != 0)
  return (EPROTONOSUPPORT);

 if (prp->pr_type != type)
  return (EPROTOTYPE);
 so = soalloc(CRED_TO_VNET(cred));
 if (so == ((void*)0))
  return (ENOBUFS);

 so->so_type = type;
 so->so_cred = crhold(cred);
 if ((prp->pr_domain->dom_family == PF_INET) ||
     (prp->pr_domain->dom_family == PF_INET6) ||
     (prp->pr_domain->dom_family == PF_ROUTE))
  so->so_fibnum = td->td_proc->p_fibnum;
 else
  so->so_fibnum = 0;
 so->so_proto = prp;



 knlist_init(&so->so_rdsel.si_note, so, so_rdknl_lock, so_rdknl_unlock,
     so_rdknl_assert_locked, so_rdknl_assert_unlocked);
 knlist_init(&so->so_wrsel.si_note, so, so_wrknl_lock, so_wrknl_unlock,
     so_wrknl_assert_locked, so_wrknl_assert_unlocked);




 CURVNET_SET(so->so_vnet);
 error = (*prp->pr_usrreqs->pru_attach)(so, proto, td);
 CURVNET_RESTORE();
 if (error) {
  sodealloc(so);
  return (error);
 }
 soref(so);
 *aso = so;
 return (0);
}
