
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {struct mbuf* head; } ;



__attribute__((used)) static inline struct mbuf *
mbq_peek(struct mbq *q)
{
 return q->head;
}
