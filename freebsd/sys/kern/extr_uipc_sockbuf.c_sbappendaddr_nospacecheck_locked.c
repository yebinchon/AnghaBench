
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 struct mbuf* m_last (struct mbuf*) ;
 int sbappendaddr_locked_internal (struct sockbuf*,struct sockaddr const*,struct mbuf*,struct mbuf*,struct mbuf*) ;

int
sbappendaddr_nospacecheck_locked(struct sockbuf *sb, const struct sockaddr *asa,
    struct mbuf *m0, struct mbuf *control)
{
 struct mbuf *ctrl_last;

 SOCKBUF_LOCK_ASSERT(sb);

 ctrl_last = (control == ((void*)0)) ? ((void*)0) : m_last(control);
 return (sbappendaddr_locked_internal(sb, asa, m0, control, ctrl_last));
}
