
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_mb; scalar_t__ sb_lastrecord; int sb_mbtail; int * sb_tls_info; } ;
struct mbuf {int * m_nextpkt; } ;


 int KASSERT (int,char*) ;
 int M_NOTREADY ;
 int PRUS_NOTREADY ;
 int SBLASTMBUFCHK (struct sockbuf*) ;
 int SBLASTRECORDCHK (struct sockbuf*) ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int ktls_seq (struct sockbuf*,struct mbuf*) ;
 int m_demote (struct mbuf*,int,int ) ;
 int sbcompress (struct sockbuf*,struct mbuf*,int ) ;

void
sbappendstream_locked(struct sockbuf *sb, struct mbuf *m, int flags)
{
 SOCKBUF_LOCK_ASSERT(sb);

 KASSERT(m->m_nextpkt == ((void*)0),("sbappendstream 0"));
 KASSERT(sb->sb_mb == sb->sb_lastrecord,("sbappendstream 1"));

 SBLASTMBUFCHK(sb);







 m_demote(m, 1, flags & PRUS_NOTREADY ? M_NOTREADY : 0);

 sbcompress(sb, m, sb->sb_mbtail);

 sb->sb_lastrecord = sb->sb_mb;
 SBLASTRECORDCHK(sb);
}
