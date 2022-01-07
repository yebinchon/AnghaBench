
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct number {int number; } ;


 int BN_get_word (int ) ;
 int normalize (struct number*,int ) ;

__attribute__((used)) static u_long
get_ulong(struct number *n)
{

 normalize(n, 0);
 return (BN_get_word(n->number));
}
