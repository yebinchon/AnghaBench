
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {int dummy; } ;


 int __mbq_init (struct mbq*) ;

void mbq_init(struct mbq *q)
{
    __mbq_init(q);
}
