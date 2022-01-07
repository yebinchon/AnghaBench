
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {int csum_flags; int len; int rcvif; void* snd_tag; } ;
struct mbuf {scalar_t__ m_len; int m_flags; struct mbuf* m_next; scalar_t__ m_data; int m_type; TYPE_1__ m_pkthdr; } ;


 int CSUM_SND_TAG ;
 int MBUF_CHECKSLEEP (int) ;
 scalar_t__ MHLEN ;
 int M_ALIGN (struct mbuf*,scalar_t__) ;
 int M_EXT ;
 int M_PKTHDR ;
 int bcopy (scalar_t__,scalar_t__,scalar_t__) ;
 int caddr_t ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 struct mbuf* m_gethdr (int,int ) ;
 void* m_snd_tag_ref (void*) ;
 int mb_dupcl (struct mbuf*,struct mbuf*) ;
 scalar_t__ mtod (struct mbuf*,int ) ;

struct mbuf *
m_split(struct mbuf *m0, int len0, int wait)
{
 struct mbuf *m, *n;
 u_int len = len0, remain;

 MBUF_CHECKSLEEP(wait);
 for (m = m0; m && len > m->m_len; m = m->m_next)
  len -= m->m_len;
 if (m == ((void*)0))
  return (((void*)0));
 remain = m->m_len - len;
 if (m0->m_flags & M_PKTHDR && remain == 0) {
  n = m_gethdr(wait, m0->m_type);
  if (n == ((void*)0))
   return (((void*)0));
  n->m_next = m->m_next;
  m->m_next = ((void*)0);
  if (m0->m_pkthdr.csum_flags & CSUM_SND_TAG) {
   n->m_pkthdr.snd_tag =
       m_snd_tag_ref(m0->m_pkthdr.snd_tag);
   n->m_pkthdr.csum_flags |= CSUM_SND_TAG;
  } else
   n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
  n->m_pkthdr.len = m0->m_pkthdr.len - len0;
  m0->m_pkthdr.len = len0;
  return (n);
 } else if (m0->m_flags & M_PKTHDR) {
  n = m_gethdr(wait, m0->m_type);
  if (n == ((void*)0))
   return (((void*)0));
  if (m0->m_pkthdr.csum_flags & CSUM_SND_TAG) {
   n->m_pkthdr.snd_tag =
       m_snd_tag_ref(m0->m_pkthdr.snd_tag);
   n->m_pkthdr.csum_flags |= CSUM_SND_TAG;
  } else
   n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
  n->m_pkthdr.len = m0->m_pkthdr.len - len0;
  m0->m_pkthdr.len = len0;
  if (m->m_flags & M_EXT)
   goto extpacket;
  if (remain > MHLEN) {

   M_ALIGN(n, 0);
   n->m_next = m_split(m, len, wait);
   if (n->m_next == ((void*)0)) {
    (void) m_free(n);
    return (((void*)0));
   } else {
    n->m_len = 0;
    return (n);
   }
  } else
   M_ALIGN(n, remain);
 } else if (remain == 0) {
  n = m->m_next;
  m->m_next = ((void*)0);
  return (n);
 } else {
  n = m_get(wait, m->m_type);
  if (n == ((void*)0))
   return (((void*)0));
  M_ALIGN(n, remain);
 }
extpacket:
 if (m->m_flags & M_EXT) {
  n->m_data = m->m_data + len;
  mb_dupcl(n, m);
 } else {
  bcopy(mtod(m, caddr_t) + len, mtod(n, caddr_t), remain);
 }
 n->m_len = remain;
 m->m_len = len;
 n->m_next = m->m_next;
 m->m_next = ((void*)0);
 return (n);
}
