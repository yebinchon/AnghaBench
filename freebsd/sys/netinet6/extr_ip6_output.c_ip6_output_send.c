
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct route_in6 {int dummy; } ;
struct route {int dummy; } ;
struct TYPE_7__ {int csum_flags; int snd_tag; int * rcvif; } ;
struct mbuf {TYPE_3__ m_pkthdr; TYPE_4__* m_next; } ;
struct m_snd_tag {struct ifnet* ifp; } ;
struct ktls_session {struct m_snd_tag* snd_tag; } ;
struct inpcb {int inp_flags2; struct m_snd_tag* inp_snd_tag; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ext_pgs; } ;
struct TYPE_8__ {TYPE_2__ m_ext; } ;
struct TYPE_5__ {int tls; } ;


 int CSUM_SND_TAG ;
 int EAGAIN ;
 int INP_RATE_LIMIT_CHANGED ;
 int KASSERT (int ,char*) ;
 int MPASS (int) ;
 int in_pcboutput_eagain (struct inpcb*) ;
 int in_pcboutput_txrtlmt (struct inpcb*,struct ifnet*,struct mbuf*) ;
 int ktls_free (struct ktls_session*) ;
 struct ktls_session* ktls_hold (int ) ;
 int ktls_output_eagain (struct inpcb*,struct ktls_session*) ;
 int m_snd_tag_ref (struct m_snd_tag*) ;
 scalar_t__ mbuf_has_tls_session (TYPE_4__*) ;
 int nd6_output_ifp (struct ifnet*,struct ifnet*,struct mbuf*,struct sockaddr_in6*,struct route*) ;

__attribute__((used)) static int
ip6_output_send(struct inpcb *inp, struct ifnet *ifp, struct ifnet *origifp,
    struct mbuf *m, struct sockaddr_in6 *dst, struct route_in6 *ro)
{



 struct m_snd_tag *mst;
 int error;

 MPASS((m->m_pkthdr.csum_flags & CSUM_SND_TAG) == 0);
 mst = ((void*)0);
 if (mst != ((void*)0)) {
  KASSERT(m->m_pkthdr.rcvif == ((void*)0),
      ("trying to add a send tag to a forwarded packet"));
  if (mst->ifp != ifp) {
   error = EAGAIN;
   goto done;
  }


  m->m_pkthdr.snd_tag = m_snd_tag_ref(mst);
  m->m_pkthdr.csum_flags |= CSUM_SND_TAG;
 }

 error = nd6_output_ifp(ifp, origifp, m, dst, (struct route *)ro);

done:
 return (error);
}
