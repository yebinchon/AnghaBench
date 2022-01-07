
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {int number; } ;


 int BN_is_negative (int ) ;
 int BN_set_negative (int ,int) ;

void
negate(struct number *n)
{
 BN_set_negative(n->number, !BN_is_negative(n->number));
}
