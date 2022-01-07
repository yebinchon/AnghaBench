
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;


 int SP_ADDREF (struct secpolicy*) ;

void
key_addref(struct secpolicy *sp)
{

 SP_ADDREF(sp);
}
