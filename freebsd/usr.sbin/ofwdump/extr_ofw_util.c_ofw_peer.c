
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFIOCGETNEXT ;
 int OFW_IOCTL (int,int ,int *) ;

phandle_t
ofw_peer(int fd, phandle_t node)
{
 phandle_t rv;

 rv = node;
 OFW_IOCTL(fd, OFIOCGETNEXT, &rv);
 return (rv);
}
