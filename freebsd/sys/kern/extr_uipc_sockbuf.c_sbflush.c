
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbflush_locked (struct sockbuf*) ;

void
sbflush(struct sockbuf *sb)
{

 SOCKBUF_LOCK(sb);
 sbflush_locked(sb);
 SOCKBUF_UNLOCK(sb);
}
