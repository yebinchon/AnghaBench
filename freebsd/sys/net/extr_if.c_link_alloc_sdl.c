
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int dummy; } ;


 int M_TEMP ;
 struct sockaddr_dl* malloc (size_t,int ,int) ;

struct sockaddr_dl *
link_alloc_sdl(size_t size, int flags)
{

 return (malloc(size, M_TEMP, flags));
}
