
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockbuf {int dummy; } ;


 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int sbrelease_internal (struct sockbuf*,struct socket*) ;

void
sbrelease_locked(struct sockbuf *sb, struct socket *so)
{

 SOCKBUF_LOCK_ASSERT(sb);

 sbrelease_internal(sb, so);
}
