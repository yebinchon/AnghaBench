
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFIOCGETOPTNODE ;
 int OFW_IOCTL (int,int ,int *) ;

phandle_t
ofw_optnode(int fd)
{
 phandle_t rv;

 OFW_IOCTL(fd, OFIOCGETOPTNODE, &rv);
 return (rv);
}
