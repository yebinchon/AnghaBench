
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {int dummy; } ;


 int __mbq_purge (struct mbq*,int) ;

void mbq_safe_purge(struct mbq *q)
{
    __mbq_purge(q, 1);
}
