
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 struct mbuf* sbcut_internal (struct sockbuf*,int) ;

struct mbuf *
sbcut_locked(struct sockbuf *sb, int len)
{

 SOCKBUF_LOCK_ASSERT(sb);
 return (sbcut_internal(sb, len));
}
