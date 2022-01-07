
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int ofw_peer (int,int ) ;

phandle_t
ofw_root(int fd)
{

 return (ofw_peer(fd, 0));
}
