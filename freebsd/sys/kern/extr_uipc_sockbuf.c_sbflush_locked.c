
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;


 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int sbflush_internal (struct sockbuf*) ;

void
sbflush_locked(struct sockbuf *sb)
{

 SOCKBUF_LOCK_ASSERT(sb);
 sbflush_internal(sb);
}
