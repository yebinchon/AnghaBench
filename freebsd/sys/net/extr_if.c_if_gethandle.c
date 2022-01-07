
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 void* if_alloc (int ) ;

void *
if_gethandle(u_char type)
{
 return (if_alloc(type));
}
