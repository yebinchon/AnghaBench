
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * an_handler_t ;


 int MPASS (int) ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 int * t4_an_handler ;

void
t4_register_an_handler(an_handler_t h)
{
 uintptr_t *loc;

 MPASS(h == ((void*)0) || t4_an_handler == ((void*)0));

 loc = (uintptr_t *)&t4_an_handler;
 atomic_store_rel_ptr(loc, (uintptr_t)h);
}
