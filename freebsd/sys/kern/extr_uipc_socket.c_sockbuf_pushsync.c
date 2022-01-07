
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {struct mbuf* sb_mb; struct mbuf* sb_lastrecord; int * sb_mbtail; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;

__attribute__((used)) static __inline void
sockbuf_pushsync(struct sockbuf *sb, struct mbuf *nextrecord)
{

 SOCKBUF_LOCK_ASSERT(sb);




 if (sb->sb_mb != ((void*)0))
  sb->sb_mb->m_nextpkt = nextrecord;
 else
  sb->sb_mb = nextrecord;







 if (sb->sb_mb == ((void*)0)) {
  sb->sb_mbtail = ((void*)0);
  sb->sb_lastrecord = ((void*)0);
 } else if (sb->sb_mb->m_nextpkt == ((void*)0))
  sb->sb_lastrecord = sb->sb_mb;
}
