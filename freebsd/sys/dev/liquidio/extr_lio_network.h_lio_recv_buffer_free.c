
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static inline void
lio_recv_buffer_free(void *buffer)
{

 m_freem((struct mbuf *)buffer);
}
