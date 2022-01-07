
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {int number; int scale; } ;


 int BN_dup (int ) ;
 struct number* bmalloc (int) ;
 int bn_checkp (int ) ;

struct number *
dup_number(const struct number *a)
{
 struct number *n;

 n = bmalloc(sizeof(*n));
 n->scale = a->scale;
 n->number = BN_dup(a->number);
 bn_checkp(n->number);
 return (n);
}
