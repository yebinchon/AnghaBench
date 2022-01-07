
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbappend_locked (struct sockbuf*,struct mbuf*,int) ;

void
sbappend(struct sockbuf *sb, struct mbuf *m, int flags)
{

 SOCKBUF_LOCK(sb);
 sbappend_locked(sb, m, flags);
 SOCKBUF_UNLOCK(sb);
}
