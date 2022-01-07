
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sadb_msghdr {TYPE_1__* msg; } ;
struct sadb_msg {int dummy; } ;
struct mbuf {int dummy; } ;
struct keycb {int kp_promisc; } ;
struct TYPE_2__ {int sadb_msg_satype; scalar_t__ sadb_msg_errno; int sadb_msg_len; } ;


 int EINVAL ;
 int IPSEC_ASSERT (int ,char*) ;
 int KEY_SENDUP_ALL ;
 int PFKEY_ALIGN8 (int) ;
 int PFKEY_UNUNIT64 (int ) ;
 int key_senderror (struct socket*,struct mbuf*,int ) ;
 int key_sendup_mbuf (struct socket*,struct mbuf*,int ) ;
 int m_adj (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ sotorawcb (struct socket*) ;

__attribute__((used)) static int
key_promisc(struct socket *so, struct mbuf *m, const struct sadb_msghdr *mhp)
{
 int olen;

 IPSEC_ASSERT(so != ((void*)0), ("null socket"));
 IPSEC_ASSERT(m != ((void*)0), ("null mbuf"));
 IPSEC_ASSERT(mhp != ((void*)0), ("null msghdr"));
 IPSEC_ASSERT(mhp->msg != ((void*)0), ("null msg"));

 olen = PFKEY_UNUNIT64(mhp->msg->sadb_msg_len);

 if (olen < sizeof(struct sadb_msg)) {

  return key_senderror(so, m, EINVAL);




 } else if (olen == sizeof(struct sadb_msg)) {

  struct keycb *kp;

  if ((kp = (struct keycb *)sotorawcb(so)) == ((void*)0))
   return key_senderror(so, m, EINVAL);
  mhp->msg->sadb_msg_errno = 0;
  switch (mhp->msg->sadb_msg_satype) {
  case 0:
  case 1:
   kp->kp_promisc = mhp->msg->sadb_msg_satype;
   break;
  default:
   return key_senderror(so, m, EINVAL);
  }


  mhp->msg->sadb_msg_errno = 0;
  return key_sendup_mbuf(so, m, KEY_SENDUP_ALL);
 } else {


  m_adj(m, PFKEY_ALIGN8(sizeof(struct sadb_msg)));


  return key_sendup_mbuf(so, m, KEY_SENDUP_ALL);
 }
}
