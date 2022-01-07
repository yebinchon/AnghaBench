
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 void* malloc (size_t,void*,int ) ;

__attribute__((used)) static void *
zstd_alloc(void *opaque, size_t size)
{
 return (malloc(size, opaque, M_WAITOK));
}
