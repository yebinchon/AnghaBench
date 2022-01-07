
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct number {int number; } ;


 int BN_free (int ) ;
 int free (struct number*) ;

void
free_number(struct number *n)
{

 BN_free(n->number);
 free(n);
}
