
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* sbcut_internal (struct sockbuf*,int) ;

void
sbdrop(struct sockbuf *sb, int len)
{
 struct mbuf *mfree;

 SOCKBUF_LOCK(sb);
 mfree = sbcut_internal(sb, len);
 SOCKBUF_UNLOCK(sb);

 m_freem(mfree);
}
