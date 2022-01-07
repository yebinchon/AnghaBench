
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_xname; int if_softc; } ;
typedef int sa_family_t ;
typedef int priv_p ;
typedef int * iffam_p ;
typedef int * hook_p ;


 int EAFNOSUPPORT ;
 int ENETDOWN ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OPACKETS ;
 int LOG_WARNING ;
 int NG_FREE_M (struct mbuf*) ;
 int NG_HOOK_REF (int *) ;
 int NG_HOOK_UNREF (int *) ;
 int NG_OUTBOUND_THREAD_REF () ;
 int NG_OUTBOUND_THREAD_UNREF () ;
 int NG_SEND_DATA_ONLY (int,int *,struct mbuf*) ;
 int PRIV_RLOCK (int const,struct rm_priotracker*) ;
 int PRIV_RUNLOCK (int const,struct rm_priotracker*) ;
 int ** get_hook_from_iffam (int const,int * const) ;
 int * get_iffam_from_af (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int log (int ,char*,int ,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
ng_iface_send(struct ifnet *ifp, struct mbuf *m, sa_family_t sa)
{
 struct rm_priotracker priv_tracker;
 const priv_p priv = (priv_p) ifp->if_softc;
 const iffam_p iffam = get_iffam_from_af(sa);
 hook_p hook;
 int error;
 int len;


 if (iffam == ((void*)0)) {
  m_freem(m);
  log(LOG_WARNING, "%s: can't handle af%d\n", ifp->if_xname, sa);
  return (EAFNOSUPPORT);
 }


 len = m->m_pkthdr.len;

 PRIV_RLOCK(priv, &priv_tracker);
 hook = *get_hook_from_iffam(priv, iffam);
 if (hook == ((void*)0)) {
  NG_FREE_M(m);
  PRIV_RUNLOCK(priv, &priv_tracker);
  return ENETDOWN;
 }
 NG_HOOK_REF(hook);
 PRIV_RUNLOCK(priv, &priv_tracker);

 NG_OUTBOUND_THREAD_REF();
 NG_SEND_DATA_ONLY(error, hook, m);
 NG_OUTBOUND_THREAD_UNREF();
 NG_HOOK_UNREF(hook);


 if (error == 0) {
  if_inc_counter(ifp, IFCOUNTER_OBYTES, len);
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 }

 return (error);
}
