
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
typedef int if_com_free_t ;
typedef int if_com_alloc_t ;


 int KASSERT (int ,char*) ;
 int ** if_com_alloc ;
 int ** if_com_free ;

void
if_register_com_alloc(u_char type,
    if_com_alloc_t *a, if_com_free_t *f)
{

 KASSERT(if_com_alloc[type] == ((void*)0),
     ("if_register_com_alloc: %d already registered", type));
 KASSERT(if_com_free[type] == ((void*)0),
     ("if_register_com_alloc: %d free already registered", type));

 if_com_alloc[type] = a;
 if_com_free[type] = f;
}
