
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; int tags; int snd_tag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; int m_pktdat; int m_data; } ;


 int CSUM_SND_TAG ;
 int KASSERT (int ,char*) ;
 int MBUF_CHECKSLEEP (int) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_COPYFLAGS ;
 int M_EXT ;
 int M_NOMAP ;
 int M_PKTHDR ;
 int SLIST_EMPTY (int *) ;
 int SLIST_INIT (int *) ;
 int m_snd_tag_ref (int ) ;
 int m_tag_copy_chain (struct mbuf*,struct mbuf const*,int) ;
 int m_tag_delete_chain (struct mbuf*,int *) ;

int
m_dup_pkthdr(struct mbuf *to, const struct mbuf *from, int how)
{
 MBUF_CHECKSLEEP(how);




 to->m_flags = (from->m_flags & M_COPYFLAGS) |
     (to->m_flags & (M_EXT | M_NOMAP));
 if ((to->m_flags & M_EXT) == 0)
  to->m_data = to->m_pktdat;
 to->m_pkthdr = from->m_pkthdr;
 if (from->m_pkthdr.csum_flags & CSUM_SND_TAG)
  m_snd_tag_ref(from->m_pkthdr.snd_tag);
 SLIST_INIT(&to->m_pkthdr.tags);
 return (m_tag_copy_chain(to, from, how));
}
