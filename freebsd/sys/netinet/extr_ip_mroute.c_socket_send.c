
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_rcv; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;


 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ sbappendaddr_locked (int *,struct sockaddr*,struct mbuf*,int *) ;
 int sorwakeup_locked (struct socket*) ;

__attribute__((used)) static int
socket_send(struct socket *s, struct mbuf *mm, struct sockaddr_in *src)
{
    if (s) {
 SOCKBUF_LOCK(&s->so_rcv);
 if (sbappendaddr_locked(&s->so_rcv, (struct sockaddr *)src, mm,
     ((void*)0)) != 0) {
     sorwakeup_locked(s);
     return 0;
 }
 SOCKBUF_UNLOCK(&s->so_rcv);
    }
    m_freem(mm);
    return -1;
}
