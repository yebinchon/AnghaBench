
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siftr_stats {int nskip_out_malloc; int nskip_in_malloc; int nskip_out_dejavu; int nskip_in_dejavu; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;


 int M_NOWAIT ;
 int PACKET_COOKIE_SIFTR ;
 int PACKET_TAG_SIFTR ;
 int PFIL_IN ;
 struct m_tag* m_tag_alloc (int ,int ,int ,int ) ;
 int * m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static inline int
siftr_chkreinject(struct mbuf *m, int dir, struct siftr_stats *ss)
{
 if (m_tag_locate(m, PACKET_COOKIE_SIFTR, PACKET_TAG_SIFTR, ((void*)0))
     != ((void*)0)) {
  if (dir == PFIL_IN)
   ss->nskip_in_dejavu++;
  else
   ss->nskip_out_dejavu++;

  return (1);
 } else {
  struct m_tag *tag = m_tag_alloc(PACKET_COOKIE_SIFTR,
      PACKET_TAG_SIFTR, 0, M_NOWAIT);
  if (tag == ((void*)0)) {
   if (dir == PFIL_IN)
    ss->nskip_in_malloc++;
   else
    ss->nskip_out_malloc++;

   return (1);
  }

  m_tag_prepend(m, tag);
 }

 return (0);
}
