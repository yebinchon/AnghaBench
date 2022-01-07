
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbdroprecord_locked (struct sockbuf*) ;

void
sbdroprecord(struct sockbuf *sb)
{

 SOCKBUF_LOCK(sb);
 sbdroprecord_locked(sb);
 SOCKBUF_UNLOCK(sb);
}
