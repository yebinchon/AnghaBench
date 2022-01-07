
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbappendrecord_locked (struct sockbuf*,struct mbuf*) ;

void
sbappendrecord(struct sockbuf *sb, struct mbuf *m0)
{

 SOCKBUF_LOCK(sb);
 sbappendrecord_locked(sb, m0);
 SOCKBUF_UNLOCK(sb);
}
