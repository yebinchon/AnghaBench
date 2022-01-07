
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 void* zcalloc_nowait (void*,int ,int ) ;

void *
zcalloc(void *nil, u_int items, u_int size)
{

 return zcalloc_nowait(nil, items, size);
}
