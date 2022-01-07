
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {TYPE_1__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct mbuf {scalar_t__ m_len; } ;
struct TYPE_2__ {int (* pr_output ) (struct mbuf*,struct socket*) ;} ;


 int EOPNOTSUPP ;
 int KASSERT (int ,char*) ;
 int PRUS_OOB ;
 int m_freem (struct mbuf*) ;
 int * sotorawcb (struct socket*) ;
 int stub1 (struct mbuf*,struct socket*) ;

__attribute__((used)) static int
raw_usend(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct thread *td)
{

 KASSERT(sotorawcb(so) != ((void*)0), ("raw_usend: rp == NULL"));

 if ((flags & PRUS_OOB) || (control && control->m_len)) {
  if (m != ((void*)0))
   m_freem(m);
  if (control != ((void*)0))
   m_freem(control);
  return (EOPNOTSUPP);
 }





 return ((*so->so_proto->pr_output)(m, so));
}
