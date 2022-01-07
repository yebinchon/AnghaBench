
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockbuf {int dummy; } ;


 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int sbrelease_locked (struct sockbuf*,struct socket*) ;

void
sbrelease(struct sockbuf *sb, struct socket *so)
{

 SOCKBUF_LOCK(sb);
 sbrelease_locked(sb, so);
 SOCKBUF_UNLOCK(sb);
}
