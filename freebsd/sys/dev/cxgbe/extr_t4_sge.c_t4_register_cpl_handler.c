
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cpl_handler_t ;


 int MPASS (int) ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 int nitems (int **) ;
 int ** t4_cpl_handler ;

void
t4_register_cpl_handler(int opcode, cpl_handler_t h)
{
 uintptr_t *loc;

 MPASS(opcode < nitems(t4_cpl_handler));
 MPASS(h == ((void*)0) || t4_cpl_handler[opcode] == ((void*)0));

 loc = (uintptr_t *)&t4_cpl_handler[opcode];
 atomic_store_rel_ptr(loc, (uintptr_t)h);
}
