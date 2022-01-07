
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* caddr_t ;


 int redzone_get_size (void*) ;
 void* redzone_roundup (int ) ;

void *
redzone_addr_ntor(caddr_t naddr)
{

 return (naddr - redzone_roundup(redzone_get_size(naddr)));
}
