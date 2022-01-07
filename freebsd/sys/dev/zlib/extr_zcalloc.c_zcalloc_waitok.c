
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int M_WAITOK ;
 int M_ZLIB ;
 void* mallocarray (int ,int ,int ,int ) ;

void *
zcalloc_waitok(void *nil, u_int items, u_int size)
{

 return mallocarray(items, size, M_ZLIB, M_WAITOK);
}
