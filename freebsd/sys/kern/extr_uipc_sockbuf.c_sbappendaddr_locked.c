
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockbuf {int dummy; } ;
struct sockaddr {int sa_len; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int SOCKBUF_LOCK_ASSERT (struct sockbuf*) ;
 scalar_t__ m_length (struct mbuf*,struct mbuf**) ;
 int panic (char*) ;
 int sbappendaddr_locked_internal (struct sockbuf*,struct sockaddr const*,struct mbuf*,struct mbuf*,struct mbuf*) ;
 int sbspace (struct sockbuf*) ;

int
sbappendaddr_locked(struct sockbuf *sb, const struct sockaddr *asa,
    struct mbuf *m0, struct mbuf *control)
{
 struct mbuf *ctrl_last;
 int space = asa->sa_len;

 SOCKBUF_LOCK_ASSERT(sb);

 if (m0 && (m0->m_flags & M_PKTHDR) == 0)
  panic("sbappendaddr_locked");
 if (m0)
  space += m0->m_pkthdr.len;
 space += m_length(control, &ctrl_last);

 if (space > sbspace(sb))
  return (0);
 return (sbappendaddr_locked_internal(sb, asa, m0, control, ctrl_last));
}
