
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {unsigned int count; } ;



__attribute__((used)) static inline unsigned int mbq_len(struct mbq *q)
{
    return q->count;
}
