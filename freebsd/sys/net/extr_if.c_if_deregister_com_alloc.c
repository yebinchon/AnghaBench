
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;


 int KASSERT (int ,char*) ;
 int ** if_com_alloc ;
 int ** if_com_free ;

void
if_deregister_com_alloc(u_char type)
{

 KASSERT(if_com_alloc[type] != ((void*)0),
     ("if_deregister_com_alloc: %d not registered", type));
 KASSERT(if_com_free[type] != ((void*)0),
     ("if_deregister_com_alloc: %d free not registered", type));
 if_com_alloc[type] = ((void*)0);
 if_com_free[type] = ((void*)0);
}
