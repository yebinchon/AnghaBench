
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;


 int m_freem (struct mbuf*) ;
 struct mbuf* mbq_dequeue (struct mbq*) ;
 struct mbuf* mbq_safe_dequeue (struct mbq*) ;

__attribute__((used)) static void __mbq_purge(struct mbq *q, int safe)
{
    struct mbuf *m;

    for (;;) {
        m = safe ? mbq_safe_dequeue(q) : mbq_dequeue(q);
        if (m) {
            m_freem(m);
        } else {
            break;
        }
    }
}
