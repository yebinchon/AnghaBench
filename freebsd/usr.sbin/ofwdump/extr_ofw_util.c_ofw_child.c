
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OFIOCGETCHILD ;
 int OFW_IOCTL (int,int ,int *) ;

phandle_t
ofw_child(int fd, phandle_t node)
{
 phandle_t rv;

 rv = node;
 OFW_IOCTL(fd, OFIOCGETCHILD, &rv);
 return (rv);
}
