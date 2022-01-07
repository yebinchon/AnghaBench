
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int err (int,char*) ;
 void* mmap (int *,int,int ,int ,int ,int ) ;
 int pfd ;

__attribute__((used)) static void *
mapEntry( u_int32_t addr, int size )
{
    void *p;

    p = mmap( ((void*)0), size, PROT_READ, MAP_SHARED, pfd, addr );
    if (p == MAP_FAILED)
 err( 1, "mapEntry" );
    return (p);
}
