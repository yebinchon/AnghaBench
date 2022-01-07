
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int dummy; } ;


 int free (struct chap*) ;

void
chap_delete(struct chap *chap)
{

 free(chap);
}
