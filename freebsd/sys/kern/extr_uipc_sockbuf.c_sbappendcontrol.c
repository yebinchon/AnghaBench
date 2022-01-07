
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbappendcontrol_locked (struct sockbuf*,struct mbuf*,struct mbuf*) ;

void
sbappendcontrol(struct sockbuf *sb, struct mbuf *m0, struct mbuf *control)
{

 SOCKBUF_LOCK(sb);
 sbappendcontrol_locked(sb, m0, control);
 SOCKBUF_UNLOCK(sb);
}
