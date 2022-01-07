
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;


 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 int m_freem (int ) ;
 int sbcut_internal (struct sockbuf*,int) ;

void
sbdrop_locked(struct sockbuf *sb, int len)
{

 SOCKBUF_LOCK_ASSERT(sb);
 m_freem(sbcut_internal(sb, len));
}
